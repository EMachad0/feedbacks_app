source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.2"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# PostgreSQL table partitioning helpers for Rails
gem "pg_party", "~> 1.3"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

# Sidekiq for background processing
gem "sidekiq", "~> 8.0"
# Sidekiq-Cron for scheduling jobs
gem "sidekiq-cron", "~> 2.3"

group :development, :test do
  # Load environment variables from .env in development & test
  gem "dotenv-rails", "~> 3.0", require: "dotenv/load"
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false
  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
  # RSpec testing framework for Rails
  gem "rspec-rails", "~> 8.0.0"
  # Fixtures replacement to easily create test data
  gem "factory_bot_rails", "~> 6.2"
  # Simple, strong Enum pattern for Ruby/Rails
  gem "enumerate_it", "~> 4.1"
  # Helpful one-liners for common Rails specs (associations, validations)
  gem "shoulda-matchers", "~> 6.0"
  # Fake data generator for seeds, factories, etc.
  gem "faker", "~> 3.2", require: false
  # Freeze and travel in time during tests
  gem "timecop", "~> 0.9", require: false
end
