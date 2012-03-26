class CreateTableRatings < ActiveRecord::Migration
  def up
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :rating
      t.timestamps
    end

    add_index :ratings, :user_id
    add_index :ratings, :event_id
    add_index :ratings, [:user_id, :event_id]

    add_index :profile_ratings, [:user_id, :profile_id]
  end

  def down
    drop_table :ratings

    remove_index :ratings, :user_id
    remove_index :ratings, :event_id
    remove_index :ratings, [:user_id, :event_id]

    remove_index :profile_ratings, [:user_id, :profile_id]    
  end
end
