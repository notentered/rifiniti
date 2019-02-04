module Types
  class UserType < Types::BaseObject
    field :id, Int, null: false
    field :posts, [PostType], null: false
  end
end
