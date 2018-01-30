class Movie < ApplicationRecord
belongs_to :genre
validates :title, presence: true
validates :title, uniqueness: true

end
