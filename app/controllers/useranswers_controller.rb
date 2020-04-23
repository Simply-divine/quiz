class UseranswersController < ApplicationController

  def create
    params[:answer].each do |key, value|
      @useranswer = Useranswer.create(useranswer_params(value))
    end
    if @useranswer.save
      flash[:success] = "Answers are successfully saved."
      render :show
    else
      flash[:danger] = "Answers not saved, plz try again."
      render :show
    end
  end

  def useranswer_params(answer)
    answer.permit(:letter, :answer, :question_id, :user_id)
  end

end