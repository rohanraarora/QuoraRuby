class AnswersController < ApplicationController
  def create
   @question = Question.find(params[:question_id])
   @answer = @question.answers.new(comment_params)
   @answer.user = current_user
   @answer.save
   redirect_to question_path(@question)
  end

  private
   def comment_params
     params.require(:answer).permit(:content)
   end

end
