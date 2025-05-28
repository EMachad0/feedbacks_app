  module Filters
    class FeedbackTimeFilter < FilterBase
      def apply(scope:, filter_input:)
        start_date = filter_input[:start_date]
        end_date = filter_input[:end_date]

        scope.where(feedbacks: { feedback_time: start_date..end_date })
      end

      private

        def filter_key
          :feedback_time_range
        end
    end
  end
