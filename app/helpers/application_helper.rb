module ApplicationHelper
	def signed_in?
		if session[:user_id].nil?
			return
		else
			@current_user = User.find_by_id(session[:user_id])
		end	
	end
	
	def authorsie
		unless signed_in?
			session[:return_to] = request.fullpath
			redirect_to login_path, :notice=> "Please sign in to access this page"
		end	
	end
end
