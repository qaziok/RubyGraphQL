module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :items, [ItemType], null: false, description: "All items"
    field :artists, [ArtistType], null: false, description: "All artists"
    field :search, [SearchOutputType], null: false, description: "Search for something new" do
      argument :qapiToken, String, required: true
      argument :countryCode, CodeType, required: true
      argument :languageCode, CodeType, required: true
      argument :filters, FilterInputType, required: true
    end

    def search(qapiToken:, countryCode:, languageCode:, filters:)
      # if qapiToken != ENV["QAPI_TOKEN"]
      #   raise GraphQL::ExecutionError, "Invalid qapiToken"
      # end
      # do crazy search here
      #SearchOutput.find(countryCode, languageCode, filters)
      puts "qapiToken: #{qapiToken}"
      puts "countryCode: #{countryCode}"
      puts "languageCode: #{languageCode}"
      puts "filters: #{filters.query}"
      [SearchOutput.new(id: 1)]
    end

    def items
      Item.all
    end

    def artists
      Artist.all
    end

  end
end
