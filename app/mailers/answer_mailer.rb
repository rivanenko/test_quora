class AnswerMailer < ApplicationMailer
  def added(answer, question)
    @answer = answer
    @question = question

    mail to: @question.user_email, subject: "You got a new answer!"
  end
end
