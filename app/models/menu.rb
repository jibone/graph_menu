# frozen_string_literal: true

# Menu
class Menu < ApplicationRecord
  validates :identifier, :label, :state, presence: true
end
