class CreateSites < ActiveRecord::Migration[6.0]
  def change
    create_table :sites do |t|
      t.float :latitude
      t.float :longitude
      t.string :name
      t.string :color
      t.string :kind

      t.timestamps
    end
  end
end
