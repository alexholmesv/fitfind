class AddEmailToGym < ActiveRecord::Migration
  def change
    add_column :gyms, :email, :string
  end
end
