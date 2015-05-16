class HomeController < ApplicationController
    def index 	
		if user_signed_in?
		@accounts = current_user.accounts.last(5)
		end
	end
	def dashboard 
		if user_signed_in?
		@data = current_user.accounts.dashboard
	else
		redirect_to root_path
	end

	end

end
