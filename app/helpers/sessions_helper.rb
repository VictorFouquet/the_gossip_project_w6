module SessionsHelper
  
  def current_user
    User.find_by(id: session[:user_id])
  end

  def log_in(user)
    session[:user_id] = user.id
  end
	
	#def logged_in?
	#	unless current_user
	#		return false
	#	else 
	#		return true
	#	end
	#end

end