helpers do


  def current_commander
    @current_commander ||= Commander.find(session[:id]) if session[:id]
  end

  def logged_in?
    current_commander
  end

  def login(commander)
    session[:id] = @commander.id
  end

  def logout
    session[:id] = nil
  end
end
