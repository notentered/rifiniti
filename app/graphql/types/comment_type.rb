module Types
  class CommentType < Types::BaseObject
    field :id, Int, null: false
    field :message, String, null: true
    field :user, UserType, null: false, preload: :user
    field :likes, [UserType], null: false, preload: :likes
  end
end
