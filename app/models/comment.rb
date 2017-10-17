class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
    validates :user, presence: true
  	validates :post, presence: true
  after_create_commit { CommentUpdateJob.perform_later(self, @user) }

  #def highest_rating_comment
  #	comments.rating_desc.first
	#end

end
