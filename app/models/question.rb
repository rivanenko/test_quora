class Question < ApplicationRecord
  belongs_to :user

  has_many :answers

  has_many :questions_topics, dependent: :destroy
  has_many :topics, through: :questions_topics

  validates :title, :user_id, presence: true
end
