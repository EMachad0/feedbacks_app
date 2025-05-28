class FeedbackResultsController < ApplicationController
  FILTERS = [
    ::Filters::FeedbackAccountIdFilter,
    ::Filters::FeedbackTimeFilter
  ].freeze

  SELECT_COLUMNS = [
    "feedback_results.id",
    "feedback_results.feedback_id",
    "feedback_results.processed_time",
    "feedbacks.feedback_time",
    "feedbacks.feedback_type",
    "feedback_results.affected_devices",
    "feedback_results.estimated_affected_accounts",
    "feedbacks.account_id",
    "feedbacks.reported_by_user_id as reported_by_id",
    "users.name as reported_by",
    "feedbacks.encoded_installation_id"
  ].freeze

  DEFAULT_PAGE_SIZE = 10
  MAX_PAGE_SIZE = 100

  def index
    return render json: { error: "Organization ID is required" }, status: :bad_request if organization_id.blank?

    scope = FeedbackResult
              .joins(feedback: :reported_by_user)
              .where(feedbacks: { organization_id: organization_id })

    query_service = TabularQueryService.new(scope)
                                       .with_filters(FILTERS, filters)

    total_count = query_service.count

    query = query_service
              .with_pagination(page, page_size)
              .with_default_sorting("processed_time", "desc")
              .select(SELECT_COLUMNS)

    render json: {
      data: query,
      meta: {
        total_count: total_count,
        page: page,
        page_size: page_size
      }
    }
  end

  private

    def organization_id
      params[:organization_id]
    end

    def page
      params[:page].present? ? params[:page].to_i : 1
    end

    def page_size
      page_size_param = params[:page_size].present? ? params[:page_size].to_i : DEFAULT_PAGE_SIZE
      [ page_size_param, MAX_PAGE_SIZE ].min
    end

    def filters
      return {} unless params[:filters].present?

      params[:filters].permit(
        account_ids: [],
        installation_ids: [],
        feedback_types: [],
        feedback_time_range:  %i[start_date end_date],
        processed_time_range: %i[start_date end_date]
      ).to_h
    end
end
