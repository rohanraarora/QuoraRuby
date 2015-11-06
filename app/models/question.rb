class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  has_many :question_upvotes
  has_many :upvoters, :through => :question_upvotes
end
