class CreateTableProfileRatings < ActiveRecord::Migration
  def up
    create_table :profile_ratings do |t|
      t.integer :user_id
      t.integer :profile_id
      t.integer :rating
      t.timestamps
    end

    add_index :profile_ratings, :user_id
    add_index :profile_ratings, :profile_id

    add_index :profiles, :name
    add_index :profiles, :nickname
    add_index :profiles, :location
  end

  def down
    drop_table :profile_ratings

    remove_index :profiles, :name
    remove_index :profiles, :nickname
    remove_index :profiles, :location
  end
end
