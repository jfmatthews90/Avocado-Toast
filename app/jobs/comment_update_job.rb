class CommentUpdateJob < ApplicationJob
  queue_as :default

  def perform(comment, current_user)
    PostChannel.broadcast_to(comment.post_id, comment: render_comment(comment, current_user)
    # Do something later
  end

  private

  def render_comment(comment, current_user)
    CommentsController.render(partial: "comments/comment", locals: {comment: comment, current_user: current_user})
  end
end
