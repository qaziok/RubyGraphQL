module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items, [ItemType], null: false, description: "All items"
    field :artists, [ArtistType], null: false, description: "All artists"

    def items
      Item.all
    end

    def artists
      Artist.all
    end

  end
end
