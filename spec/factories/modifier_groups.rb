FactoryBot.define do
  factory :modifier_group do
    identifier { 'modifier_group_1' }
    label { 'Modifier Group' }
    selection_required_min { 1 }
    selection_required_max { 10 }
  end
end
