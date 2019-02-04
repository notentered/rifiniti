module Types
  class MutationType < Types::BaseObject
    field :create_comment, mutation: Mutations::CreateComment
    field :like_comment, mutation: Mutations::LikeComment
  end
end
