# frozen_string_literal: true

FactoryBot.define do
  factory :section_item do
    association :menu
    association :section
    display_order { 1 }
  end
end
