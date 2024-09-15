# frozen_string_literal: true

# Create Items
class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :identifier, null: false
      t.string :type, null: false # Product / Component
      t.string :label, null: false
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
