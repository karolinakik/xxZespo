class Event < ActiveRecord::Base
    validates :title, presence: true,
                    length: { minimum: 5 }
    belongs_to :place
    has_many :histories


end
