# frozen_string_literal: true

module Types
  class ArtistType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String
    field :last_name, String
    field :email, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def full_name
      "#{first_name} #{last_name}"
    end
  end
end
