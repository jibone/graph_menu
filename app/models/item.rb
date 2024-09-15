# frozen_string_literal: true

# Model Item
class Item < ApplicationRecord
  has_many :section_items
  has_many :sections, through: :section_items

  validates :identifier, :label, :price, :type, presence: true
  validates :price, numericality: true
end
