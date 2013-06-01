class Idea < ActiveRecord::Base
  attr_accessible :description, :title, :status_id
  belongs_to :status
end
