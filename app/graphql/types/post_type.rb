module Types
  class PostType < Types::BaseObject
    field :id, Int, null: false
    field :comments, [CommentType], null: false
  end
end
