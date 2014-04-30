class HomeController < ApplicationController
	def index
    	if user_signed_in? 
    		redirect_to ideas_path
    	end
  	end
end
