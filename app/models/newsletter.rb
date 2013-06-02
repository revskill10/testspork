class Newsletter < ActiveRecord::Base
  attr_accessible :bookmarked, :person_id, :subscription_id
end
