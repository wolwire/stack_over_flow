class QuestionsController < ApplicationController
  include QuestionsHelper
  def index
    @questions=Question.all.paginate(page: params[:page])
  end

  def search
    @questions=search_ques(params[:search])
    if @questions.nil? || @questions.empty?
      flash[:info] = "Couldn\'t find #{params[:search]}"
      redirect_to root_path
    else
      @questions=@questions.paginate(page: params[:page])
    end
  end
  def show
    @question=Question.find(params[:id])
  end

end
