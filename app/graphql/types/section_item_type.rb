# frozen_string_literal: true

module Types
  class SectionItemType < Types::BaseObject
    field :id, ID, null: false
    field :section, Types::SectionType, null: false
    field :item, Types::ItemType, null: false
    field :display_order, Integer, null: false
  end
end
