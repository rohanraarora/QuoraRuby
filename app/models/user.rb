class User < ActiveRecord::Base

  has_many :questions
  has_many :answers
  has_many :followers
  has_many :followings, :through => :followers, :source => :follower
#  has_many :users, :through => :followers
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
