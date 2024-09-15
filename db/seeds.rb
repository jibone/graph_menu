# frozen_string_literal: true

# Clear existing data
MenuSection.delete_all
SectionItem.delete_all
Modifier.delete_all
ItemModifierGroup.delete_all
Menu.delete_all
Section.delete_all
Item.delete_all
ModifierGroup.delete_all

# Create Menus
menu1 = Menu.create!(identifier: 'lunch_menu', label: 'Lunch Menu', state: 'active', start_date: Date.today,
                     end_date: Date.today + 30)
menu2 = Menu.create!(identifier: 'dinner_menu', label: 'Dinner Menu', state: 'active', start_date: Date.today,
                     end_date: Date.today + 30)
menu3 = Menu.create!(identifier: 'breakfast_menu', label: 'Breakfast Menu', state: 'active', start_date: Date.today,
                     end_date: Date.today + 30)
menu4 = Menu.create!(identifier: 'weekend_specials', label: 'Weekend Specials', state: 'active',
                     start_date: Date.today, end_date: Date.today + 30)

# Create Sections
section1 = Section.create!(identifier: 'appetizers', label: 'Appetizers',
                           description: 'Start your meal with a delightful appetizer')
section2 = Section.create!(identifier: 'main_courses', label: 'Main Courses', description: 'Hearty and filling dishes')
section3 = Section.create!(identifier: 'desserts', label: 'Desserts', description: 'End your meal with a sweet treat')
section4 = Section.create!(identifier: 'breakfast_specials', label: 'Breakfast Specials',
                           description: 'Morning favorites to kick-start your day')
section5 = Section.create!(identifier: 'drinks', label: 'Drinks',
                           description: 'Refreshing beverages to complement your meal')

# Assign Sections to Menus
MenuSection.create!(menu: menu1, section: section1, display_order: 1)
MenuSection.create!(menu: menu1, section: section2, display_order: 2)
MenuSection.create!(menu: menu1, section: section5, display_order: 3)

MenuSection.create!(menu: menu2, section: section2, display_order: 1)
MenuSection.create!(menu: menu2, section: section3, display_order: 2)
MenuSection.create!(menu: menu2, section: section5, display_order: 3)

MenuSection.create!(menu: menu3, section: section4, display_order: 1)
MenuSection.create!(menu: menu3, section: section5, display_order: 2)

MenuSection.create!(menu: menu4, section: section1, display_order: 1)
MenuSection.create!(menu: menu4, section: section2, display_order: 2)
MenuSection.create!(menu: menu4, section: section3, display_order: 3)

# Create Items
item1 = Item.create!(item_type: 'Product', identifier: 'spring_rolls', label: 'Spring Rolls',
                     description: 'Crispy and delicious', price: 5.99)
item2 = Item.create!(item_type: 'Product', identifier: 'beef_burger', label: 'Beef Burger',
                     description: 'Juicy beef patty with toppings', price: 12.99)
item3 = Item.create!(item_type: 'Product', identifier: 'cheesecake', label: 'Cheesecake', description: 'Creamy and rich',
                     price: 6.99)
item4 = Item.create!(item_type: 'Product', identifier: 'pancakes', label: 'Pancakes',
                     description: 'Fluffy pancakes with syrup', price: 7.99)
item5 = Item.create!(item_type: 'Product', identifier: 'omelette', label: 'Omelette',
                     description: 'Three-egg omelette with cheese', price: 8.99)
item6 = Item.create!(item_type: 'Product', identifier: 'iced_tea', label: 'Iced Tea',
                     description: 'Chilled black tea with lemon', price: 2.99)
item7 = Item.create!(item_type: 'Product', identifier: 'coffee', label: 'Coffee', description: 'Freshly brewed hot coffee',
                     price: 2.49)

# Assign Items to Sections
SectionItem.create!(section: section1, item: item1, display_order: 1)
SectionItem.create!(section: section2, item: item2, display_order: 1)
SectionItem.create!(section: section2, item: item5, display_order: 2)
SectionItem.create!(section: section3, item: item3, display_order: 1)
SectionItem.create!(section: section4, item: item4, display_order: 1)
SectionItem.create!(section: section5, item: item6, display_order: 1)
SectionItem.create!(section: section5, item: item7, display_order: 2)

# Create ModifierGroups
modifier_group1 = ModifierGroup.create!(identifier: 'burger_toppings', label: 'Burger Toppings',
                                        selection_required_min: 0, selection_required_max: 3)
modifier_group2 = ModifierGroup.create!(identifier: 'sauces', label: 'Sauces', selection_required_min: 1,
                                        selection_required_max: 1)
modifier_group3 = ModifierGroup.create!(identifier: 'omelette_add_ons', label: 'Omelette Add-ons',
                                        selection_required_min: 0, selection_required_max: 4)

# Assign ModifierGroups to Items
ItemModifierGroup.create!(item: item2, modifier_group: modifier_group1)
ItemModifierGroup.create!(item: item2, modifier_group: modifier_group2)
ItemModifierGroup.create!(item: item5, modifier_group: modifier_group3)

# Create Modifiers for Burger Toppings
Modifier.create!(item: item2, modifier_group: modifier_group1, display_order: 1, default_quantity: 0,
                 price_override: 1.00, label: 'Bacon')
Modifier.create!(item: item2, modifier_group: modifier_group1, display_order: 2, default_quantity: 0,
                 price_override: 0.75, label: 'Cheddar Cheese')
Modifier.create!(item: item2, modifier_group: modifier_group1, display_order: 3, default_quantity: 0,
                 price_override: 0.50, label: 'Lettuce')
Modifier.create!(item: item2, modifier_group: modifier_group1, display_order: 4, default_quantity: 0,
                 price_override: 0.50, label: 'Tomato')

# Create Modifiers for Sauces
Modifier.create!(item: item2, modifier_group: modifier_group2, display_order: 1, default_quantity: 1,
                 price_override: 0.00, label: 'Ketchup')
Modifier.create!(item: item2, modifier_group: modifier_group2, display_order: 2, default_quantity: 1,
                 price_override: 0.00, label: 'Mustard')
Modifier.create!(item: item2, modifier_group: modifier_group2, display_order: 3, default_quantity: 1,
                 price_override: 0.00, label: 'Mayo')

# Create Modifiers for Omelette Add-ons
Modifier.create!(item: item5, modifier_group: modifier_group3, display_order: 1, default_quantity: 0,
                 price_override: 0.75, label: 'Mushrooms')
Modifier.create!(item: item5, modifier_group: modifier_group3, display_order: 2, default_quantity: 0,
                 price_override: 1.00, label: 'Bacon')
Modifier.create!(item: item5, modifier_group: modifier_group3, display_order: 3, default_quantity: 0,
                 price_override: 0.50, label: 'Cheese')
Modifier.create!(item: item5, modifier_group: modifier_group3, display_order: 4, default_quantity: 0,
                 price_override: 0.50, label: 'Spinach')

# Additional Dessert Item Modifiers
modifier_group4 = ModifierGroup.create!(identifier: 'dessert_toppings', label: 'Dessert Toppings',
                                        selection_required_min: 0, selection_required_max: 2)
ItemModifierGroup.create!(item: item3, modifier_group: modifier_group4)
Modifier.create!(item: item3, modifier_group: modifier_group4, display_order: 1, default_quantity: 0,
                 price_override: 0.50, label: 'Whipped Cream')
Modifier.create!(item: item3, modifier_group: modifier_group4, display_order: 2, default_quantity: 0,
                 price_override: 1.00, label: 'Chocolate Syrup')

puts 'Seed data created successfully with more examples!'
