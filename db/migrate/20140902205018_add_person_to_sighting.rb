class AddPersonToSighting < ActiveRecord::Migration
  def change
    add_column :sightings, :person_name, :string
  end
end
