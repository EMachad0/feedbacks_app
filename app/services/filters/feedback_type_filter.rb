module Filters
  class FeedbackTypeFilter < FilterBase
    def apply(scope:, filter_input:)
      scope.where(feedbacks: { feedback_type: filter_input })
    end

    private

      def filter_key
        :feedback_types
      end
  end
end
