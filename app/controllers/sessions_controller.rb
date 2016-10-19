get '/sessions/new' do
  erb :'sessions/new'
end


post '/sessions' do
  @commander = Commander.find_by_email(params[:email])

  if @commander && @commander.password == params[:password]
    session[:id] = @commander.id
    login(@commander)
    redirect '/commanders/#{@commander.id}'

  else
    @errors = ["Name && Password not found."]
    erb :'sessions/new'
  end
end



# delete '/sessions/:id' do
delete '/sessions' do
  session[:id] = nil
  logout 
  redirect '/'
end
