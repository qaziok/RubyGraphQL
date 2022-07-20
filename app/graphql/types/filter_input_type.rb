# frozen_string_literal: true

module Types
  class FilterInputType < Types::BaseInputObject
    argument :query, String, required: false
    argument :adults, Integer, required: false
    argument :name, String, required: false
  end
end
