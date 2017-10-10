class Post < ApplicationRecord
	acts_as_votable
	has_many :comments
	validates :name, :body, :description, :image_url, presence: true

	def self.search(search_term)
    if Rails.env.development?
        Post.where("name LIKE ?", "%#{search_term}%")
    else
        Post.where("name ilike ?", "%#{search_term}%")
    end
  end

end
