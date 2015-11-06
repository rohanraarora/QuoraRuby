class QuestionUpvotesController < ApplicationController
  def create
    question = Question.find(params[:id])
    upvoter = question.question_upvotes.build(:upvoter_id => current_user.id)
    if upvoter.save
      flash[:notice] = "Question Upvoted."
      redirect_to :back
    else
      flash[:notice] = "Unable to upvote question."
      redirect_to root_url
    end
  end

  def destroy
    upvote = Question.find(params[:id]).question_upvotes.find_by upvoter_id: current_user.id
    upvote.destroy
    flash[:notice] = "Question Downvoted."
    redirect_to :back
  end

end
