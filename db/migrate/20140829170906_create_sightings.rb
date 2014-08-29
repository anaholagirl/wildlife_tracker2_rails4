class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :latitude, :float
      t.column :longitude, :float
      t.column :animal_id, :integer
      t.column :region_id, :integer
      t.column :sight_date, :date

      t.timestamps
    end
  end
end
