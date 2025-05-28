module Filters
  class FeedbackProcessedTimeFilter < FilterBase
    def apply(scope:, filter_input:)
      start_date = filter_input[:start_date]
      end_date = filter_input[:end_date]

      scope.where(processed_time: start_date..end_date)
    end

    private

      def filter_key
        :processed_time_range
      end
  end
end
