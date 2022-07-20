# frozen_string_literal: true

module Types
  class OffersOutputType < Types::BaseObject
    field :id, ID, null: false
    field :property, [PropertyOutputType], null: false do
      argument :filters, Types::FilterInputType, required: true
    end

    def property(filters:)
      [PropertyOutput.new(name: "Property 1", category: "Category 1"),
       PropertyOutput.new(name: "Property 2", category: "Category 2"),
       PropertyOutput.new(name: "Test", category: "Category 3")].filter { |p| p.name == filters.name }
    end

  end
end
