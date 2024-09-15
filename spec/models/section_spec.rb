# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Section, type: :model do
  it { should validate_presence_of(:identifier) }
  it { should validate_presence_of(:label) }
end
