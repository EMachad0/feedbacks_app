# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Seeding data...'

require 'faker'

FEEDBACK_TYPES = FeedbackType.list

ActiveRecord::Base.transaction do
  # Users
  users = 10.times.map do |i|
    User.find_or_create_by!(email: Faker::Internet.unique.email) do |u|
      u.name = Faker::Name.unique.name
    end
  end

  # Organizations
  organization_ids = (1..3).to_a

  organization_ids.each do |org_id|
    20.times do
      reporter = users.sample
      installation_id = SecureRandom.uuid
      feedback = Feedback.create!(
        organization_id: org_id,
        reported_by_user_id: reporter.id,
        account_id: SecureRandom.uuid,
        installation_id: installation_id,
        feedback_type: FEEDBACK_TYPES.sample,
        feedback_time: Faker::Time.between(from: 30.days.ago, to: Time.current)
      )

      FeedbackResult.create!(
        feedback: feedback,
        organization_id: org_id,
        affected_devices: Faker::Number.between(from: 1, to: 50),
        estimated_affected_accounts: Faker::Number.between(from: 1, to: 20),
        processed_time: feedback.feedback_time + Faker::Number.between(from: 5, to: 120).minutes
      )
    end
  end
end

puts 'Seeding complete.'
