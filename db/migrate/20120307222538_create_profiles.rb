class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.string :nickname
      t.string :location
      t.string :profession
      t.string :about
      t.string :img_url
      t.string :thumbnail_url
      t.string :website
      t.timestamps
    end

    remove_column :users, :nickname
  end

  def self.down
    drop_table :profiles
    add_column :users, :nickname, :string
  end
end
