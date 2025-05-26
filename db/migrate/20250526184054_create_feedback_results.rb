class CreateFeedbackResults < ActiveRecord::Migration[8.0]
  def change
    create_table :feedback_results do |t|
      t.references :feedback, null: false, foreign_key: true
      t.bigint :organization_id, null: false
      t.integer :affected_devices
      t.integer :estimated_affected_accounts
      t.datetime :processed_time

      t.index :processed_time

      t.timestamps
    end
  end
end
