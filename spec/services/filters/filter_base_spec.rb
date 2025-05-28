require 'rails_helper'

RSpec.describe Filters::FilterBase do
  class DummyFilter < Filters::FilterBase
    def apply(scope:, filter_input:)
      scope.where(id: filter_input)
    end

    private

      def filter_key
        :dummy_key
      end
  end

  let(:match) { create(:feedback_result) }
  let(:non_match) { create(:feedback_result) }
  let(:base_scope) { FeedbackResult.all }

  before do
    match
    non_match
  end

  describe '.call' do
    context 'when the provided input is not a Hash' do
      it 'raises an ArgumentError mentioning the wrong class' do
        expect {
          DummyFilter.call(scope: base_scope, input: [])
        }.to raise_error(ArgumentError, /Expected Hash, got Array/)
      end
    end

    context 'when the filter input is blank' do
      it 'returns the original scope unchanged' do
        result = DummyFilter.call(scope: base_scope, input: {})
        expect(result).to eq(base_scope)
      end
    end

    context 'when the filter input is present' do
      it 'applies the filter implementation' do
        filtered_scope = DummyFilter.call(scope: base_scope, input: { dummy_key: [ match.id ] })
        expect(filtered_scope).to include(match)
        expect(filtered_scope).not_to include(non_match)
      end
    end
  end
end
