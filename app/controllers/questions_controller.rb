class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    # @question = Question.find(params[:id])
    # @answer = Answer.new
  end

  def new
    @question = Question.new
  end
  
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      # render :new
    end
  end

  def edit
    # @question = Question.find(params[:id])
  end
  
  private
    def question_params
      params.require(:question).permit(:name, :title, :content)
    end
  
end