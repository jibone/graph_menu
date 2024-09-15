# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ModifierGroup, type: :model do
  it { should have_many(:modifiers) }

  it { should validate_presence_of(:identifier) }
  it { should validate_presence_of(:label) }
  it { should validate_numericality_of(:selection_required_min) }
  it { should validate_numericality_of(:selection_required_max) }
end
