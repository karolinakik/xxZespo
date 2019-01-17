class Eventsaa < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

  # has_one  :id
  has_one  :title
  has_one  :genre
  # has_one  :description
  # has_one  :organiser
  # has_one  :day
  # has_one  :start_time
  # has_one  :city
  # has_one  :place_id

  scope :eventsaa, -> { where(profile: 'event') }
end
