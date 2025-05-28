require 'rails_helper'
require 'rack/utils'
require 'net/http'

RSpec.describe 'call_feedback_results_endpoint script' do
  let(:script_path) { Rails.root.join('script', 'call_feedback_results_endpoint.rb') }

  def run_script(argv)
    original = ARGV.dup
    stub_const('ARGV', argv)
    load script_path
  ensure
    stub_const('ARGV', original)
  end

  it 'calls the endpoint with the expected query parameters' do
    argv = %w[
      --org 123
      --page 2
      --page-size 25
      --account-ids 111,222
      --installation-ids AAA,BBB
      --feedback-types verified,reset
      --feedback-time-start 2024-01-01
      --feedback-time-end 2024-01-31
      --processed-time-start 2024-02-01
      --processed-time-end 2024-02-28
      --base-url http://localhost:3000
    ]

    captured_uri = nil

    # Suppress script output from Kernel#puts calls
    allow_any_instance_of(Object).to receive(:puts)

    success_response = double('response', body: '{}')
    allow(success_response).to receive(:is_a?).with(Net::HTTPSuccess).and_return(true)

    allow(Net::HTTP).to receive(:get_response) do |uri|
      captured_uri = uri
      success_response
    end

    expect { run_script(argv) }.not_to raise_error

    expect(Net::HTTP).to have_received(:get_response).once
    expect(captured_uri).not_to be_nil

    # Validate basic components
    expect(captured_uri.host).to eq('localhost')
    expect(captured_uri.path).to eq('/feedback_results')

    # Validate nested query params
    query = Rack::Utils.parse_nested_query(captured_uri.query)

    expect(query['organization_id']).to eq('123')
    expect(query['page']).to eq('2')
    expect(query['page_size']).to eq('25')

    filters = query['filters']
    expect(filters['account_ids']).to match_array(%w[111 222])
    expect(filters['installation_ids']).to match_array(%w[AAA BBB])
    expect(filters['feedback_types']).to match_array(%w[verified reset])

    expect(filters['feedback_time_range']['start_date']).to eq('2024-01-01')
    expect(filters['feedback_time_range']['end_date']).to eq('2024-01-31')
    expect(filters['processed_time_range']['start_date']).to eq('2024-02-01')
    expect(filters['processed_time_range']['end_date']).to eq('2024-02-28')
  end
end
