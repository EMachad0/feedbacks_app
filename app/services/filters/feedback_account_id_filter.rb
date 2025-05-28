module Filters
  class FeedbackAccountIdFilter < FilterBase
    def apply(scope:, filter_input:)
      scope.where(feedbacks: { account_id: filter_input })
    end

    private

      def filter_key
        :account_ids
      end
  end
end
