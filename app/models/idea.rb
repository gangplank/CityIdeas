class Idea < ActiveRecord::Base
  attr_accessible :description, :title
  has_one :status
end
