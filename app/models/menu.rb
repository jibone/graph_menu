# frozen_string_literal: true

# Menu
class Menu < ApplicationRecord
  validates :identifier, :label, presence: true
  validates :label, :label, presence: true
  validates :state, :label, presence: true
end
