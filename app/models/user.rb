class User < ActiveRecord::Base
  has_many :rounds
  has_secure_password
  validates_uniqueness_of :username
  validates :username, presence: true
end
