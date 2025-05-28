require 'rails_helper'

RSpec.describe Filters::FeedbackTypeFilter do
  let!(:verified_feedback) { create(:feedback, feedback_type: 'verified') }
  let!(:reset_feedback) { create(:feedback, feedback_type: 'reset') }
  let!(:identity_feedback) { create(:feedback, feedback_type: 'identity_fraud') }

  let!(:verified_result) { create(:feedback_result, feedback: verified_feedback) }
  let!(:reset_result) { create(:feedback_result, feedback: reset_feedback) }
  let!(:identity_result) { create(:feedback_result, feedback: identity_feedback) }

  let(:base_scope) { FeedbackResult.joins(:feedback).all }

  describe '.call' do
    subject { described_class.call(scope: base_scope, input:) }

    context 'with a single feedback_type' do
      let(:input) { { feedback_types: [ 'verified' ] } }

      it 'returns results with matching feedback_type' do
        expect(subject).to include(verified_result)
        expect(subject).not_to include(reset_result)
        expect(subject).not_to include(identity_result)
      end
    end

    context 'with multiple feedback_types' do
      let(:input) { { feedback_types: [ 'verified', 'identity_fraud' ] } }

      it 'returns results with any of the provided feedback_types' do
        expect(subject).to include(verified_result)
        expect(subject).to include(identity_result)
        expect(subject).not_to include(reset_result)
      end
    end
  end
end
