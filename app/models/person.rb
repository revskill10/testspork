class Person < ActiveRecord::Base
  attr_accessible :age, :name, :zipcode, :tweets
  validates :name, presence: true
  has_many :tweets
end
