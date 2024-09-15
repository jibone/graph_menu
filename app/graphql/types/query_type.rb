# frozen_string_literal: true

module Types
  # Query type
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: 'Fetches an object given its ID.' do
      argument :id, ID, required: true, description: 'ID of the object.'
    end

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    field :nodes, [Types::NodeType, { null: true }], null: true,
                                                     description: 'Fetches a list of objects given a list of IDs.' do
      argument :ids, [ID], required: true, description: 'IDs of the objects.'
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :menus, [Types::MenuType], null: false do
      description 'Retrieve all menus'
    end
    def menus
      Menu.all
    end

    field :menu, Types::MenuType, null: true do
      description 'Find a menu by ID'
      argument :id, ID, required: true
    end
    def menu(id:)
      Menu.find_by(id:)
    end

    field :sections, [Types::SectionType], null: false do
      description 'Retrieve all sections'
    end
    def sections
      Section.all
    end

    field :items, [Types::ItemType], null: false do
      description 'Retrieve all items'
    end
    def items
      Item.all
    end

    field :menu_sections, [Types::MenuSectionType], null: false do
      description 'Retrieve all menu sections'
    end
    def menu_sections
      MenuSection.all
    end

    field :section_items, [Types::SectionItemType], null: false do
      description 'Retrieve all section items'
    end
    def section_items
      SectionItem.all
    end
  end
end
