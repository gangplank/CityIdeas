class Idea < ActiveRecord::Base
  acts_as_votable
  acts_as_commentable
  
  attr_accessible :description, :title, :status_id
  belongs_to :status
  belongs_to :category
end
