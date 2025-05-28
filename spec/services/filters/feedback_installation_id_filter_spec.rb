require 'rails_helper'

RSpec.describe Filters::FeedbackInstallationIdFilter do
  let(:results) { create_list(:feedback_result, 3) }

  let(:base_scope) { FeedbackResult.joins(:feedback).all }

  describe '.call' do
    subject { described_class.call(scope: base_scope, input:) }

    context 'with a single installation_id' do
      let(:input) { { installation_ids: [ results.first.feedback.encoded_installation_id ] } }

      it 'filters feedback_results by the provided encoded_installation_ids' do
        expect(subject).to include(results.first)
        expect(subject).not_to include(results.second)
        expect(subject).not_to include(results.third)
      end
    end

    context 'with multiple installation_ids' do
      let(:input) { { installation_ids: [ results.first.feedback.encoded_installation_id, results.second.feedback.encoded_installation_id ] } }

      it 'filters feedback_results by the provided encoded_installation_ids' do
        expect(subject).to include(results.first)
        expect(subject).to include(results.second)
        expect(subject).not_to include(results.third)
      end
    end
  end
end
