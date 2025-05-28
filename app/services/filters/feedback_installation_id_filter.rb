module Filters
  class FeedbackInstallationIdFilter < FilterBase
    def apply(scope:, filter_input:)
      scope.where(feedbacks: { encoded_installation_id: filter_input })
    end

    private

      def filter_key
        :installation_ids
      end
  end
end
