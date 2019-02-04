module Types
  class CommentType < Types::BaseObject
    field :id, Int, null: false
    field :message, String, null: true
    field :user, UserType, null: false
    field :likes, [UserType], null: false
  end
end
