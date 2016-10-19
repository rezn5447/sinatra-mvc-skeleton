get '/' do
  if current_commander
    @commander = Commander.find(session[:commander_id])
    redirect "/commanders/#{@commander.id}"
  else
    erb :index
  end
end