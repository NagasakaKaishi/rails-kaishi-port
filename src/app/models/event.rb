class Event < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
