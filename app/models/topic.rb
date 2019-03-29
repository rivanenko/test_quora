class Topic < ApplicationRecord
  belongs_to :user

  has_many :questions_topics, dependent: :destroy
  has_many :questions, through: :questions_topics

  validates :title, presence: true, uniqueness: true
end
