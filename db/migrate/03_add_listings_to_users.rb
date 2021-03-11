class AddListingsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :listing_id, :integer
  end
end
