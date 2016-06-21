class Letter < ActiveRecord::Base
	has_many :subscriptions
	has_many :representatives, through: :subscriptions
	accepts_nested_attributes_for :representatives
end
