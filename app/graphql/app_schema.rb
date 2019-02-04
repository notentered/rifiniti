schema_path = File.expand_path('schema.graphql', __dir__)

type_hash = {
  'Query' => {
    'users' => ->(_ob, _args, _ctx) { User.all },
  },
  'User' => {
    'id'=> ->(obj, _args, _ctx) { obj.id },
    'posts' => ->(obj, _args, _ctx) { obj.posts }
  },
  'Post' => {
      'id' => ->(obj, _args, _ctx) { obj.id },
      'comments' => ->(obj, _args, _ctx) { obj.comments }
  },
  'Comments' => {
      'id' => ->(obj, _args, _ctx) { obj.id },
      'user' => ->(obj, _args, _ctx) { obj.user },
      'message' => ->(obj, _args, _ctx) { obj.message },
      'likes' => ->(obj, _args, _ctx) { obj.likes },
  },
  'Likes' => {
      'user' => ->(obj, _args, _ctx) { obj.users },
  },
}

AppSchema = GraphQL::Schema.from_definition( schema_path, default_resolve: type_hash )