module Mutations
  class LikeComment < Mutations::BaseMutation
    null true

    argument :comment_id, Int, required: true

    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(comment_id:)
      like = CommentsUser.new(comment_id: comment_id, user: context[:current_user])
      if like.save
        {
            comment: Comment.find(comment_id),
            errors: [],
        }
      else
        {
            comment: nil,
            errors: like.errors.full_messages
        }
      end
    end
  end
end
