# frozen_string_literal: true

# Model ItemModifierGroup
class ItemModifierGroup < ApplicationRecord
  belongs_to :item
  belongs_to :modifier_group
end
