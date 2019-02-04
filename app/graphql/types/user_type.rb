module Types
  class UserType < Types::BaseObject
    field :id, Int, null: false
    field :posts, [PostType], null: false, preload: :posts
  end
end
