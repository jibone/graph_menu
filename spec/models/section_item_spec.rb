# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SectionItem, type: :model do
  it { should belong_to(:section) }
  it { should belong_to(:item) }
  it { should validate_presence_of(:display_order) }
end
