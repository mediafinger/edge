class AddIndexToPropertiesHstoreInProfiles < ActiveRecord::Migration
  def up
    execute "CREATE INDEX profiles_properties ON profiles USING GIN(properties)"
  end

  def down
    execute "DROP INDEX profiles_properties"
  end
end