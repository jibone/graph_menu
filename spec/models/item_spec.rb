# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  it { should validate_presence_of(:identifier) }
  it { should validate_presence_of(:label) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:type) }
  it { should validate_numericality_of(:price) }
end
