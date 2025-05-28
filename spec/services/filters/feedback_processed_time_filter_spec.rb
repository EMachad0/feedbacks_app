require 'rails_helper'

RSpec.describe Filters::FeedbackProcessedTimeFilter do
  let(:older_result) { create(:feedback_result, processed_time: 10.days.ago) }
  let(:in_range_result) { create(:feedback_result, processed_time: 3.days.ago) }
  let(:future_result) { create(:feedback_result, processed_time: 2.days.from_now) }

  let(:base_scope) { FeedbackResult.all }

  before do
    older_result
    in_range_result
    future_result
  end

  around do |example|
    Timecop.freeze(Time.current) do
      example.run
    end
  end

  describe '.call' do
    subject { described_class.call(scope: base_scope, input:) }

    let(:input) { { processed_time_range: { start_date:, end_date: } } }

    context 'with start_date and end_date' do
      let(:start_date) { 5.days.ago }
      let(:end_date) { Time.current }

      it 'returns results whose processed_time falls inside the provided range' do
        expect(subject).not_to include(older_result)
        expect(subject).to include(in_range_result)
        expect(subject).not_to include(future_result)
      end
    end

    context 'with start_date only' do
      let(:start_date) { 5.days.ago }
      let(:end_date) { nil }

      it 'returns results with processed_time greater than or equal to the start_date' do
        expect(subject).not_to include(older_result)
        expect(subject).to include(in_range_result)
        expect(subject).to include(future_result)
      end
    end

    context 'with end_date only' do
      let(:start_date) { nil }
      let(:end_date) { Time.current }

      it 'returns results with processed_time less than or equal to the end_date' do
        expect(subject).to include(older_result)
        expect(subject).to include(in_range_result)
        expect(subject).not_to include(future_result)
      end
    end
  end
end
