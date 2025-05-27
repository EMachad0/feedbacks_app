class FeedbackResultsController < ApplicationController
  def index
    organization_id = params[:organization_id]
    return render json: { error: "Organization ID is required" }, status: :bad_request unless organization_id

    query = FeedbackResult
      .joins(feedback: :reported_by_user)
      .where(feedbacks: { organization_id: organization_id })

    query = apply_filters(query) if params[:filters].present?

    total_count = query.count

    page = (params[:page] || 1).to_i
    page_size = [ (params[:page_size] || 50).to_i, 100 ].min
    offset = (page - 1) * page_size

    results = query
      .order(processed_time: :desc)
      .limit(page_size)
      .offset(offset)
      .select(
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
      )

    render json: {
      data: results,
      meta: {
        total_count: total_count,
        page: page,
        page_size: page_size
      }
    }
  end

  private

    def apply_filters(query)
      filters = params[:filters]

      if filters[:account_ids].present?
        query = query.where(feedbacks: { account_id: filters[:account_ids] })
      end

      if filters[:installation_ids].present?
        query = query.where(feedbacks: { encoded_installation_id: filters[:installation_ids] })
      end

      if filters[:feedback_types].present?
        query = query.where(feedbacks: { feedback_type: filters[:feedback_types] })
      end

      if filters[:feedback_time_range].present?
        range = filters[:feedback_time_range]
        start_date = range[:start_date].present? ? Time.parse(range[:start_date]) : nil
        end_date = range[:end_date].present? ? Time.parse(range[:end_date]) : nil

        query = query.where(feedbacks: { feedback_time: start_date.. }) if start_date
        query = query.where(feedbacks: { feedback_time: ..end_date }) if end_date
      end

      if filters[:processed_time_range].present?
        range = filters[:processed_time_range]
        start_date = range[:start_date].present? ? Time.parse(range[:start_date]) : nil
        end_date = range[:end_date].present? ? Time.parse(range[:end_date]) : nil

        query = query.where(feedback_results: { processed_time: start_date.. }) if start_date
        query = query.where(feedback_results: { processed_time: ..end_date }) if end_date
      end

      query
    end
end
