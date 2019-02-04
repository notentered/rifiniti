class AppSchema < GraphQL::Schema
  use GraphQL::Batch
  enable_preloading

  query Types::QueryType
  mutation Types::MutationType
end
