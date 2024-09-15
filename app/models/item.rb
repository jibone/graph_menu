# frozen_string_literal: true

# Model Item
class Item < ApplicationRecord
  validates :identifier, :label, :price, :type, presence: true
  validates :price, numericality: true
end
