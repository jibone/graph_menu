# frozen_string_literal: true

FactoryBot.define do
  factory :menu do
    identifier { 'MyMenu' }
    label { 'My Menu' }
    state { 'active' }
    start_date { Date.today }
    end_date { Date.today + 30 }
  end
end
