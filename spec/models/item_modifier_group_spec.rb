# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemModifierGroup, type: :model do
  it { should belong_to(:item) }
  it { should belong_to(:modifier_group) }
end
