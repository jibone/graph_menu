# frozen_string_literal: true

# Rename column type to item_type
class RenameTypeInItemsToItemType < ActiveRecord::Migration[7.1]
  def change
    rename_column :items, :type, :item_type
  end
end
