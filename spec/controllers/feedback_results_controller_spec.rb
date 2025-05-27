require 'rails_helper'

RSpec.describe FeedbackResultsController, type: :controller do
  subject(:request) { get :index, params: params }

  let(:user) { create(:user, name: 'John Doe', email: 'john.doe@example.com') }
  let(:organization_id) { Faker::Number.between(from: 1, to: 3) }
  let(:feedback) do
    create(
      :feedback,
      organization_id:,
      feedback_type: 'verified',
      reported_by_user: user,
    )
  end
  let(:feedback_result) do
    create(
      :feedback_result,
      organization_id:,
      feedback:,
      affected_devices: 10,
      estimated_affected_accounts: 5
    )
  end
  let(:params) { {} }

  before do
    feedback_result
  end

  describe 'GET #index' do
    context 'when organization_id is missing' do
      it 'returns bad request status' do
        request

        expect(response).to have_http_status(:bad_request)
        expect(JSON.parse(response.body)).to eq({ 'error' => 'Organization ID is required' })
      end
    end

    context 'with valid organization_id' do
      let(:params) { { organization_id: } }
      let(:json_response) { JSON.parse(response.body) }
      let(:data) { json_response['data'] }
      let(:meta) { json_response['meta'] }

      it 'returns ok status' do
        request

        expect(response).to have_http_status(:ok)
      end

      it 'returns feedback results for the organization' do
        request

        expect(data.length).to eq(1)
        result = data.first

        expect(result['id']).to eq(feedback_result.id)
        expect(result['feedback_id']).to eq(feedback.id)
        expect(result['processed_time']).to be_present
        expect(result['feedback_time']).to be_present
        expect(result['feedback_type']).to eq('verified')
        expect(result['affected_devices']).to eq(10)
        expect(result['estimated_affected_accounts']).to eq(5)
        expect(result['account_id']).to be_present
        expect(result['reported_by_id']).to eq(user.id)
        expect(result['reported_by']).to eq(user.name)
        expect(result['encoded_installation_id']).to be_present
      end

      context 'with pagination' do
        let(:params) { { organization_id:, page: 1, page_size: 2 } }

        before do
          create_list(:feedback_result, 3, feedback: create(:feedback, organization_id:))
        end

        it 'returns paginated results' do
          request

          expect(data.length).to eq(2)
          expect(meta['total_count']).to eq(4)
          expect(meta['page']).to eq(1)
          expect(meta['page_size']).to eq(2)
        end

        it 'respects maximum page size' do
          get :index, params: params.merge(page_size: 200)

          expect(meta['page_size']).to eq(100)
        end
      end

      context 'with filters' do
        let(:filters) { {} }
        let(:params) { { organization_id:, filters: } }
        let(:other_feedback) { create(:feedback, organization_id:) }
        let(:other_result) { create(:feedback_result, feedback: other_feedback) }

        before do
          other_feedback
          other_result

          request
        end

        context 'before applying filters' do
          it 'returns all results' do
            expect(data.length).to eq(2)
          end
        end

        context 'with account_ids' do
          let(:filters) { { account_ids: feedback.account_id } }

          it 'filters by account_ids' do
            expect(data.length).to eq(1)
          end
        end
      end
    end
  end
end
