module SessionsHelper

  def signed_in?
    if session[:remember_token] && user.id
      true
    else
      false
    end
  end 

  def current_user
    if user.signed_in?
      User.find_by_id(user.id)
    else
      nil
    end
  end

end
