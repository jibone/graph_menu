# frozen_string_literal: true

# Model Section
class Section < ApplicationRecord
  has_many :menu_section
  has_many :menus, through: :menu_sections
  has_many :section_items
  has_many :items, through: :section_items

  validates :identifier, :label, presence: true
end
