require 'rails_helper'

RSpec.describe Filters::FeedbackAccountIdFilter do
  let(:results) { create_list(:feedback_result, 3) }

  let(:base_scope) { FeedbackResult.joins(:feedback).all }

  describe '.call' do
    subject { described_class.call(scope: base_scope, input:) }

    context 'with a single account_id' do
      let(:input) { { account_ids: [ results.first.feedback.account_id ] } }

      it 'filters feedback_results by the provided account_ids' do
        expect(subject).to include(results.first)
        expect(subject).not_to include(results.last)
        expect(subject).not_to include(results.second)
      end
    end

    context 'with multiple account_ids' do
      let(:input) { { account_ids: [ results.first.feedback.account_id, results.second.feedback.account_id ] } }

      it 'filters feedback_results by the provided account_ids' do
        expect(subject).to include(results.first)
        expect(subject).to include(results.second)
        expect(subject).not_to include(results.third)
      end
    end
  end
end
