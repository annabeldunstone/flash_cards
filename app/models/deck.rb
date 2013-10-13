class Deck < ActiveRecord::Base
  has_many :cards, :dependent => :destroy
  has_many :rounds, :dependent => :destroy
  validates :deckname, presence: true
  validates_uniqueness_of :deckname
end
