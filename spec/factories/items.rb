# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    identifier { 'item-1' }
    item_type { 'Product' }
    label { 'Sample Item' }
    description { 'This is a sample description for the item.' }
    price { 13.00 }
  end
end
