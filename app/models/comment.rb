class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def highest_rating_comment
  	comments.rating_desc.first
	end

end
