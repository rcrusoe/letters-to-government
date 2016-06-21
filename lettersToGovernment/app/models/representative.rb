class Representative < ActiveRecord::Base
	has_many :subscriptions
	has_many :letters, through: :subscriptions

	def full_name
	   "#{self.first_name} #{self.last_name} (#{self.state}-#{self.party.chars.first})"
	end
end
