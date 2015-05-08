class CreatePuppyNames < ActiveRecord::Migration
  def change
    create_table :puppy_names do |t|
      t.string :name
      t.integer :vote_count, default: 0

      t.timestamps null: false
    end
  end
end
