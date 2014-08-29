class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.column :name, :string

      t.timestamps
    end
  end
end
