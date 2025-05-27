class CreateFeedbackResults < ActiveRecord::Migration[8.0]
  def up
    create_hash_partition :feedback_results, partition_key: :organization_id do |t|
      t.references :feedback, null: false, foreign_key: true
      t.bigint :organization_id, null: false
      t.integer :affected_devices
      t.integer :estimated_affected_accounts
      t.datetime :processed_time

      t.index :processed_time
      t.index :organization_id

      t.timestamps
    end

    128.times do |i|
      name = format('feedback_results_p%03d', i)
      execute <<~SQL.squish
        CREATE TABLE IF NOT EXISTS #{name}
        PARTITION OF feedback_results FOR VALUES WITH (MODULUS 128, REMAINDER #{i});
      SQL
    end
  end

  def down
    drop_table :feedback_results, if_exists: true, force: :cascade
  end
end
