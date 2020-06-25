class AnswersController < ApplicationController
  
  def create
    
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    
    if @answer.update(answer_params)
      redirect_to question_path(@question), notice: 'Success!'
    else
      redirect_to question_path(@question), alert: 'error!'
    end
    
  end
  
  def edit
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
  end
  
  def update
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    
    if @answer = @question.update(answer_params)
      redirect_to question_path(@question)
    else
      render :edit
    end
  end
  
  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    redirect_to question_path(@question)
  end
  
  private
    def answer_params
      params.require(:answer).permit(:content, :name, :question_id)
    end
    
end
