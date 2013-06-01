class Idea < ActiveRecord::Base
  acts_as_votable
  
  attr_accessible :description, :title, :status_id
  belongs_to :status
end
