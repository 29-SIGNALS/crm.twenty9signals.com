# frozen_string_literal: true

# Roles Migration
class CreateHOATable < ActiveRecord::Migration[6.1]
  def change
    create_table :hoa, if_not_exists: true do |t|
      t.string :contact
      t.string :phone
      t.string :email
      t.string :community
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps null: false
    end
  end
end
