# frozen_string_literal: true

# Model Modifier
class Modifier < ApplicationRecord
  belongs_to :item
  belongs_to :modifier_group

  validates :display_order, :default_quantity, numericality: { only_integer: true }
  validates :price_override, numericality: true, allow_nil: true
end
