class CreateLifestamps < ActiveRecord::Migration
  def change
    create_table :lifestamps do |t|
      t.decimal :value
      t.timestamp :timestamp
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
