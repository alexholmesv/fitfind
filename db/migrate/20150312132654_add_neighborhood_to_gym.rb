class AddNeighborhoodToGym < ActiveRecord::Migration
  def change
    add_reference :gyms, :neighborhood, index: true
  end
end
