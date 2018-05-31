class Game < ApplicationRecord

  validates :time, presence: true
  validates :league, presence: true
  validates :description, presence: true
  validates :signal, presence: true
end
