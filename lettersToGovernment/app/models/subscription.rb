class Subscription < ActiveRecord::Base
  belongs_to :letter
  belongs_to :representative
end
