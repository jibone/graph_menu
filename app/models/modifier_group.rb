# frozen_string_literal: true

# Model ModifierGroup
class ModifierGroup < ApplicationRecord
  has_many :modifiers

  validates :identifier, :label, presence: true
  validates :selection_required_min, :selection_required_max, numericality: { only_integer: true }
end
