# frozen_string_literal: true

class Section < ApplicationRecord
  validates :identifier, :label, presence: true
end
