class Course < ActiveRecord::Base
  has_many :rounds
  has_many :users, through: :rounds
  validates :name, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :slope, presence: true
  validates :rating, presence: true


end
