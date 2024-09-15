# frozen_string_literal: true

module Types
  # ItemType
  class ItemType < Types::BaseObject
    field :id, ID, null: false
    field :identifier, String, null: false
    field :label, String, null: false
    field :description, String, null: true
    field :price, Float, null: false
    field :item_type, String, null: false
  end
end
