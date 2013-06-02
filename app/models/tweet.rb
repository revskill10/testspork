class Tweet < ActiveRecord::Base
  belongs_to :person
  attr_accessible :status
end
