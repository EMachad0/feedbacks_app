class CreateFeedbacks < ActiveRecord::Migration[8.0]
  def change
    create_table :feedbacks do |t|
      t.bigint :organization_id
      t.uuid :reported_by_user_id
      t.uuid :account_id
      t.uuid :installation_id
      t.string :encoded_installation_id
      t.string :feedback_type
      t.datetime :feedback_time

      t.index :organization_id
      t.index :account_id
      t.index :encoded_installation_id
      t.index :feedback_type
      t.index :feedback_time
      t.index :reported_by_user_id

      t.timestamps
    end

    # Foreign-key constraint (optional because users table uses uuid primary key)
    add_foreign_key :feedbacks, :users, column: :reported_by_user_id
  end
end
