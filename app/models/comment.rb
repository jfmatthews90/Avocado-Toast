class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :body, presence: true
    validates :user, presence: true
  	validates :post, presence: true

  #def highest_rating_comment
  #	comments.rating_desc.first
	#end

end
