#!/usr/bin/env ruby
# frozen_string_literal: true

# Simple CLI wrapper around the FeedbackResultsController#index endpoint.
# It performs an HTTP GET request to the running Rails server (default http://localhost:3000)
# and prints the JSON response.
#
# Usage examples:
#   ruby script/call_feedback_results_endpoint.rb --org 123
#   ruby script/call_feedback_results_endpoint.rb --org 123 --page 2 --page-size 25 \
#        --account-ids 111,222 --installation-ids AAA,BBB --feedback-types verified,reset
#
# If you run Rails in Docker (port 3000 exposed as in docker-compose.yml), the default base URL works.

require 'optparse'
require 'net/http'
require 'uri'
require 'json'
require 'rack'

options = {
  page: 1,
  page_size: 50,
  base_url: 'http://localhost:3000'
}

OptionParser.new do |opts|
  opts.banner = 'Call FeedbackResults endpoint'

  opts.on('--org ID', Integer, 'Organization ID (required)')          { |v| options[:organization_id] = v }
  opts.on('--page N', Integer, 'Page number')                         { |v| options[:page] = v }
  opts.on('--page-size N', Integer, 'Page size')                      { |v| options[:page_size] = v }
  opts.on('--account-ids IDS', String, 'Comma-separated account_ids') { |v| options[:account_ids] = v.split(/,\s*/) }
  opts.on('--installation-ids IDS', String)                           { |v| options[:installation_ids] = v.split(/,\s*/) }
  opts.on('--feedback-types TYPES', String)                           { |v| options[:feedback_types] = v.split(/,\s*/) }
  opts.on('--feedback-time-start DATE', String, 'Feedback time range start (ISO8601)')   { |v| options[:feedback_time_start] = v }
  opts.on('--feedback-time-end DATE', String, 'Feedback time range end (ISO8601)')       { |v| options[:feedback_time_end] = v }
  opts.on('--processed-time-start DATE', String, 'Processed time range start (ISO8601)') { |v| options[:processed_time_start] = v }
  opts.on('--processed-time-end DATE', String, 'Processed time range end (ISO8601)')     { |v| options[:processed_time_end] = v }
  opts.on('--base-url URL', String, 'Base URL (default http://localhost:3000)') { |v| options[:base_url] = v }
  opts.on('--help') { puts opts; exit }
end.parse!

unless options[:organization_id]
  warn '--org is required'
  exit 1
end

# Build nested params hash
params = {
  organization_id: options[:organization_id],
  page: options[:page],
  page_size: options[:page_size]
}

filters = {}
filters[:account_ids] = options[:account_ids] if options[:account_ids]
filters[:installation_ids] = options[:installation_ids] if options[:installation_ids]
filters[:feedback_types] = options[:feedback_types] if options[:feedback_types]

if options[:feedback_time_start] || options[:feedback_time_end]
  filters[:feedback_time_range] = {}
  filters[:feedback_time_range][:start_date] = options[:feedback_time_start] if options[:feedback_time_start]
  filters[:feedback_time_range][:end_date]   = options[:feedback_time_end]   if options[:feedback_time_end]
end

if options[:processed_time_start] || options[:processed_time_end]
  filters[:processed_time_range] = {}
  filters[:processed_time_range][:start_date] = options[:processed_time_start] if options[:processed_time_start]
  filters[:processed_time_range][:end_date]   = options[:processed_time_end]   if options[:processed_time_end]
end

params[:filters] = filters unless filters.empty?

query_string = Rack::Utils.build_nested_query(params)

uri = URI.join(options[:base_url], '/feedback_results')
uri.query = query_string

response = Net::HTTP.get_response(uri)

if response.is_a?(Net::HTTPSuccess)
  puts JSON.pretty_generate(JSON.parse(response.body))
else
  warn "HTTP #{response.code}: #{response.body}"
  exit 1
end
