class Idea < ActiveRecord::Base
  acts_as_votable
  acts_as_commentable
  
  attr_accessible :description, :title, :status_id, :category_id, :vote_score
  belongs_to :status
  belongs_to :category
  
  def update_vote_score
    self.vote_score = self.upvotes.size - self.downvotes.size
    self.save!
  end
    
end
