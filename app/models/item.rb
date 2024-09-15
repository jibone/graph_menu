# frozen_string_literal: true

# Model Item
class Item < ApplicationRecord
  has_many :section_items
  has_many :sections, through: :section_items
  has_many :modifiers
  has_many :item_modifier_groups
  has_many :modifier_groups, through: :item_modifier_groups

  validates :identifier, :label, :price, :item_type, presence: true
  validates :price, numericality: true
end
