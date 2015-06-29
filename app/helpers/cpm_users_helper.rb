module CpmUsersHelper
  def super_user?
    session[:user_permit]
  end
end
