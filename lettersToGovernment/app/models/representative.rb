class Representative < ActiveRecord::Base
	has_many :subscriptions
	has_many :letters, through: :subscriptions
end
