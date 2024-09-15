# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Menu, type: :model do
  it { should validate_presence_of(:identifier) }
  it { should validate_presence_of(:label) }
  it { should validate_presence_of(:state) }
end
