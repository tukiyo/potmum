# frozen_string_literal: true

module Graph
  module Connections
    User = ::Graph::Types::User.define_connection do
      field :totalCount do
        type types.Int
        resolve ->(obj, _args, _ctx) { obj.nodes.count }
      end
    end
  end
end
