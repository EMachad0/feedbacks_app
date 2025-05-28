# Feedbacks Page Server

A Rails 8 API-only service that lists aggregated feedback results for customer organisations. It is designed for very high write volume while keeping reads fast by using PostgreSQL hash-partitioned tables and background jobs.

---

## Table of contents
1.  [Features](#features)
2.  [Tech stack](#tech-stack)
3.  [Quick start with Docker](#quick-start-with-docker)
4.  [API](#api)
5.  [CLI helpers](#cli-helpers)
6.  [Tests](#tests)
8.  [Background jobs & schedule](#background-jobs--schedule)
7.  [Database partitioning](#database-partitioning)
9.  [Local development](#local-development)

---

## Features
* `/feedback_results` endpoint with pagination and filtering (date-ranges, feedback types, ids).
* Tenant isolation – every query is scoped by `organization_id` and hits **one** hash partition only.
* 128 hash partitions (`feedback_results_p000` … `p127`) automatically created by migration.
* Monthly Sidekiq cron job that deletes data older than 1 month.
* Docker Compose stack (Rails API, PostgreSQL 16, Redis 7, Sidekiq worker).
* RSpec test-suite covering models, API and partitioning guarantees.

## Tech stack
* Ruby 3.3.x, Rails 8.0
* PostgreSQL 16
* Sidekiq 7.3
* RSpec

---

## Quick start with Docker

Easiest way to test and review this application.

```bash
git clone https://github.com/EMachad0/feedbacks_app
cd feedbacks_app
docker compose up --build
```
The stack exposes:
* Rails API -> <http://localhost:3000>
* Sidekiq Web UI -> <http://localhost:3000/sidekiq>

Seeds will populate the database so you can directly query the endpoint.

---

## API

### GET `/feedback_results`

Required parameter `organization_id` plus optional filters.

| Param | Type | Description |
|-------|------|-------------|
| `organization_id` | integer | Tenant id *(required)* |
| `page` | integer | Default 1 |
| `page_size` | integer | Default 50, max 100 |
| `filters[account_ids][]` | array(uuid) | One or many account ids |
| `filters[installation_ids][]` | array(string) | Encoded installation ids |
| `filters[feedback_types][]` | array(string) | One or many feedback types |
| `filters[feedback_time_range][start_date]` | datetime | ISO 8601 |
| `filters[feedback_time_range][end_date]` | datetime | |
| `filters[processed_time_range][start_date]` | datetime | |
| `filters[processed_time_range][end_date]` | datetime | |

Possible feedback types are `verified`, `reset`, `account_takeover`, `identity_fraud`.

Example response:
```json
{
  "data": [{
    "id": 1,
    "feedback_id": 42,
    "processed_time": "2025-05-27T14:35:22Z",
    "feedback_time": "2025-05-27T14:34:10Z",
    "feedback_type": "verified",
    "affected_devices": 3,
    "estimated_affected_accounts": 2,
    "account_id": "...",
    "reported_by_id": "...",
    "reported_by": "Jane Doe",
    "encoded_installation_id": "abc123"
  }],
  "meta": { "total_count": 150, "page": 1, "page_size": 50 }
}
```

---

## CLI helpers

For testing the API a lightweight script wrapper is provided, it prints a pretty JSON response to STDOUT.

Examples:

```bash
# Get all feedback results for organization 1
ruby script/call_feedback_results_endpoint.rb --org 1

# Get all feedback results with pagination
ruby script/call_feedback_results_endpoint.rb --org 1 --page 2 --page-size 5

# Get all feedback results for organization 1 with filtering
ruby script/call_feedback_results_endpoint.rb --org 1 --feedback-types verified,reset

# See all available options
ruby script/call_feedback_results_endpoint.rb --help
```

---

## Tests

Tests are written with RSpec and can be run with:

```bash
bundle exec rspec
```
---

## Background jobs & schedule

For demonstration proposes a single job was created that deletes rows whose `processed_time` < 1 month ago.
It is scheduled to run every month at 00:00 UTC.
It's behaviour is tested on Unit tests and can be manually tested on the Sidekiq Web UI Cron tab.

---

## Database partitioning
* Migration `20250526184054_create_feedback_results.rb` creates the parent table and 128 child tables.
* Table names are padded: `feedback_results_p000` … `p127`.
* Queries filtered by `organization_id` touch a single partition.

---

## Local development

If you want to contribute or run the application locally.

This project uses [asdf](https://asdf-vm.com/) to manage the tool versions but you can use other versioning tools at your discretion.

Also, you need to setup the environment variables. There is a `.env.example` file with good defaults that you can copy to `.env` and adjust to your needs.

```bash
# Setup environment variables
cp .env.example .env

# Install dependencies
asdf install
bundle install

# Run the API server
bundle exec rails server

# Run Sidekiq worker
bundle exec sidekiq -q default -q maintenance
```

---
