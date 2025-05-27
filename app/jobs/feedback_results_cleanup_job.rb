class FeedbackResultsCleanupJob
  include Sidekiq::Job

  sidekiq_options queue: :maintenance, retry: false

  def perform
    cutoff = 1.month.ago

    # TODO: move this feedback results to a cold storage warehouse
    deleted = FeedbackResult.where("processed_time < ?", cutoff).delete_all

    Rails.logger.info("FeedbackResultsCleanupJob deleted #{deleted} rows older than #{cutoff}.")
  end
end
