class QuestionsController < ApplicationController
  before_action :require_admin

  def new
    @question = Question.new()
  end

  def create
    @question = Question.new(question_params)
    #@question.avatar.attach(params[:question][:avatar])
    if @question.save
      flash[:success] = "Que saved successfuuly"
      redirect_to new_question_path
    else
      flash[:danger] = "Plz try again"
      render 'new'
    end
  end

  def show
  end

  def index
    @questions = Question.all
  end

  def edit
  end

  def update
    #@question.avatar.attach(params[:question][:avatar])
    if @question.update(question_params)
      flash[:success] = "User updated successfully"
      redirect_to question_path(@question)
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:danger] = "Question deleted"
    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:question, :avatar, :option1, :check1, :option2, :check2, :option3, :check3, :option4, :check4, :subgenre_id)
  end

  def require_admin
    if logged_in?
      if !current_user.admin?
        flash[:danger] = "You need to sign in as admin to perform this action"
        redirect_to root_path
      end
    else
      flash[:danger] = "You need to sign in to perform this action"
      redirect_to login_path
    end
  end
end