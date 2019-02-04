module Types
  class PostType < Types::BaseObject
    field :id, Int, null: false
    field :comments, [CommentType, null: true], null: true, preload: :comments
  end
end
