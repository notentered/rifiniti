module Types
  class CommentType < Types::BaseObject
    field :id, Int, null: false
    field :message, String, null: true
    field :user, UserType, null: true, preload: :user
    field :likes, [UserType, null: true], null: true, preload: :likes
  end
end
