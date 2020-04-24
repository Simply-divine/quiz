class DashboardController < ApplicationController
  before_action :require_user
  def index
    @sum = 0
    current_user.user_quizzes.each do |qt|
      @sum =@sum + qt.score
    end
    current_user.score = @sum
    current_user.save
    @quizes = current_user.user_quizzes
  end

  private

  def require_user
    if !logged_in?
      flash[:danger] = "You have not logged in"
      redirect_to login_path
    end
  end

end