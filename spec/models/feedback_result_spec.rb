require 'rails_helper'

RSpec.describe FeedbackResult, type: :model do
  subject { build(:feedback_result) }

  describe 'associations' do
    it { is_expected.to belong_to(:feedback) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:affected_devices) }
    it { is_expected.to validate_presence_of(:estimated_affected_accounts) }
    it { is_expected.to validate_presence_of(:processed_time) }
  end

  describe 'partitioning' do
    let(:conn) { ActiveRecord::Base.connection }

    it "is declared as HASH-partitioned on organization_id" do
      info = conn.select_one(<<~SQL)
        SELECT partstrat
        FROM   pg_partitioned_table
        WHERE  partrelid = 'feedback_results'::regclass
      SQL
      expect(info["partstrat"]).to eq("h"), "expected HASH partitioning"
    end

    it "has 128 attached partitions" do
      count = conn.select_value(<<~SQL)
        SELECT COUNT(*)
        FROM   pg_partitioned_table pt
        JOIN   pg_inherits i ON i.inhparent = pt.partrelid
        WHERE  pt.partrelid = 'feedback_results'::regclass
      SQL
      expect(count).to eq(128)
    end

    it "child tables follow the pNNN naming convention" do
      names = conn.select_values(<<~SQL)
        SELECT c.relname
        FROM   pg_class c
        JOIN   pg_inherits i ON i.inhrelid = c.oid
        WHERE  i.inhparent = 'feedback_results'::regclass
        ORDER  BY relname
      SQL
      expect(names).to all(match(/^feedback_results_p\d{3}$/))
    end
  end
end
