module Mutations
  class CreateComment < Mutations::BaseMutation
    null true

    argument :post_id, Int, required: true
    argument :message, String, required: true

    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(post_id:, message:)
      comment = Comment.new(post_id: post_id, message: message, user: context[:current_user])
      if comment.save
        {
            comment: comment,
            errors: [],
        }
      else
        {
            comment: nil,
            errors: comment.errors.full_messages
        }
      end
    end
  end
end
