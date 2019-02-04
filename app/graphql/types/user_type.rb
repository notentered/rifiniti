module Types
  class UserType < Types::BaseObject
    field :id, Int, null: false
    field :posts, [PostType, null: true], null: true, preload: :posts
  end
end
