class AddLogosToGyms < ActiveRecord::Migration
  def change
    add_column :gyms, :logo, :string
  end
end
