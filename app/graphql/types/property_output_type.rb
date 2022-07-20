# frozen_string_literal: true

module Types
  class PropertyOutputType < Types::BaseObject

    field :name , ID, null: false
    field :category , String, null: false
    field :description , String, null: true

  end
end
