# frozen_string_literal: true

module Types
  class SearchOutputType < Types::BaseObject

    field :id, ID, null: false
    field :offers, [OffersOutputType], null: false do
      argument :id, ID, required: true
      argument :limit, Int, required: false
    end

    def offers(id:, limit:)
      # limited number of offers
      [*1..limit].map{|x| OffersOutput.new(id: "#{id}#{x}")}
    end

  end
end
