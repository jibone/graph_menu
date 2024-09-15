# frozen_string_literal: true

FactoryBot.define do
  factory :section do
    identifier { 'MySection' }
    label { 'My Section' }
    description { 'Section Description' }
  end
end
