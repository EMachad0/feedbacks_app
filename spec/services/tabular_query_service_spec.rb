require 'rails_helper'

RSpec.describe TabularQueryService do
  subject(:service) { described_class.new(base_scope) }

  let(:older) { create(:feedback_result, processed_time: 2.days.ago) }
  let(:newer) { create(:feedback_result, processed_time: 1.day.ago) }
  let(:base_scope) { FeedbackResult.joins(:feedback).all }

  before do
    older
    newer
  end

  describe '#with_pagination' do
    it 'returns limited subset' do
      expect(service.with_pagination(1, 1).count).to eq 1
    end
  end

  describe '#with_default_sorting' do
    it 'orders by column direction' do
      results = service.with_default_sorting('processed_time', 'desc').select_all
      expect(results.first).to eq(newer)
    end
  end

  describe '#with_filters' do
    it 'applies provided filters' do
      results = service
        .with_filters([ Filters::FeedbackAccountIdFilter ], { account_ids: [ older.feedback.account_id ] })
        .select_all

      expect(results).to include(older)
      expect(results).not_to include(newer)
    end
  end
end
