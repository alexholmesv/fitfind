class AddCustomerToGym < ActiveRecord::Migration
  def change
    add_column :gyms, :customer, :boolean
  end
end
