class ApplicationController < ActionController::Base
  def current_user
    User.find_by({ id: session[:user_id] })
  end

  helper_method :current_user
  #before_action :current_user

  #def current_user
  #  puts "------------------ code before every request ------------------"
  #end
end
