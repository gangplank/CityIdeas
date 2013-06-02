class User < ActiveRecord::Base
  acts_as_voter
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :is_admin, :md5
  # attr_accessible :title, :body
  
  def is_admin?
    is_admin
  end

  def md5
    require 'digest/md5'
    Digest::MD5.hexdigest( self.email )
  end
  
end
