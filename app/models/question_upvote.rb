class QuestionUpvote < ActiveRecord::Base
  belongs_to :question
  belongs_to :upvoter,:class_name => 'User'
end
