class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :fetch_my_questions, if: :current_user

  private

  def fetch_my_questions
    @my_questions = current_user.questions
  end
end
