require 'rails_helper'

RSpec.describe FeedbackResultsCleanupJob, type: :job do
  let(:job) { described_class.new }

  let(:cutoff) { 1.month.ago }

  around do |example|
    Timecop.freeze(Time.current) do
      example.run
    end
  end

  describe 'perform' do
    it 'deletes only feedback_results processed before cutoff' do
      old_result = create(:feedback_result, processed_time: cutoff - 1.day).reload
      recent_result = create(:feedback_result, processed_time: cutoff + 1.day).reload

      job.perform

      expect(FeedbackResult.exists?(old_result.id)).to be_falsey
      expect(FeedbackResult.exists?(recent_result.id)).to be_truthy
    end
  end
end
