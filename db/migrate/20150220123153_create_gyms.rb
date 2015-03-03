class CreateGyms < ActiveRecord::Migration
  def change
    create_table :gyms do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :comuna

      t.timestamps
    end
  end
end
