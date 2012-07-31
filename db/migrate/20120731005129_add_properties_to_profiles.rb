class AddPropertiesToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :properties, :hstore
  end
end
