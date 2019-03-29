class Comment < ApplicationRecord
  belongs_to :answer
  belongs_to :user

  validates :body, :answer_id, :user_id, presence: true
end
