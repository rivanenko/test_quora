class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  has_many :comments

  validates :body, :question_id, :user_id, presence: true

  delegate :email, to: :user, prefix: true
end
