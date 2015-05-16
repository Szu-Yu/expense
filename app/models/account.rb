class Account < ActiveRecord::Base
	belongs_to :user
	def self.dashboard
	data=Account.select("expense, sum(money) as total").group("expense")

	data.map{|d|[d.expense,d.total]}
	end
end
