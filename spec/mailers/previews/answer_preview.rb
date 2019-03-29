# Preview all emails at http://localhost:3000/rails/mailers/answer
class AnswerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/answer/added
  def added
    AnswerMailer.added Answer.first
  end

end
