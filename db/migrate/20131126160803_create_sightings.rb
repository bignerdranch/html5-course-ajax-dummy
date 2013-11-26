class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :kind
      t.date :date
      t.string :location
      t.integer :witnesses
      t.string :name

      t.timestamps
    end
  end
end
