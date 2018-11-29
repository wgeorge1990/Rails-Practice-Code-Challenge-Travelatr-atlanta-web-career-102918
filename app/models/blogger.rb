class Blogger < ApplicationRecord
has_many :posts
has_many :destinations, through: :posts

  def total_likes
    @likes = 0
    self.posts.each do |post|
      @likes += post.likes
    end
    @likes
  end

  def top_post
    self.posts.max_by(&:likes).id
  end
end
