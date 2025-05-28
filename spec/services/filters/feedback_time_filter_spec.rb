require 'rails_helper'

RSpec.describe Filters::FeedbackTimeFilter do
  let(:older) { create(:feedback, feedback_time: 10.days.ago) }
  let(:in_range) { create(:feedback, feedback_time: 3.days.ago) }
  let(:future_event) { create(:feedback, feedback_time: 2.days.from_now) }
  let(:future_event_result) { create(:feedback_result, feedback: future_event) }
  let(:in_range_result) { create(:feedback_result, feedback: in_range) }
  let(:older_result) { create(:feedback_result, feedback: older) }

  let(:base_scope) { FeedbackResult.joins(:feedback).all }

  before do
    future_event_result
    in_range_result
    older_result
  end

  around do |example|
    Timecop.freeze(Time.current) do
      example.run
    end
  end

  describe '.call' do
    subject { described_class.call(scope: base_scope, input:) }

    let(:input) { { feedback_time_range: { start_date:, end_date: } } }

    context 'with start_date and end_date' do
      let(:start_date) { 5.days.ago }
      let(:end_date) { Time.current }

      it 'returns feedbacks whose feedback_time falls inside the provided range' do
        expect(subject).not_to include(older_result)
        expect(subject).to include(in_range_result)
        expect(subject).not_to include(future_event_result)
      end
    end

    context 'with start_date only' do
      let(:start_date) { 5.days.ago }
      let(:end_date) { nil }

      it 'returns feedbacks whose feedback_time is greater than or equal to the start_date' do
        expect(subject).not_to include(older_result)
        expect(subject).to include(in_range_result)
        expect(subject).to include(future_event_result)
      end
    end

    context 'with end_date only' do
      let(:start_date) { nil }
      let(:end_date) { Time.current }

      it 'returns feedbacks whose feedback_time is less than or equal to the end_date' do
        expect(subject).to include(older_result)
        expect(subject).to include(in_range_result)
        expect(subject).not_to include(future_event_result)
      end
    end
  end
end
