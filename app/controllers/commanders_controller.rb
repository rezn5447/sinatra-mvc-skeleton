get '/commanders/new' do
  erb :'commanders/new'
end

post "/commanders" do
 @commander = Commander.new(params[:commander])
  p @commander
  if @commander.save
    p @commander.id
    # Dir.mkdir(:commanders_folder/"#{@commander.id}")
    # Dir.mkdir("/commanders")
    redirect "/commanders/#{@commander.id}"
  else
    @errors = @commander.errors.full_messages
    erb :"commanders/new"
  end

get '/commanders/:id' do
  @commander = Commander.find(params[:id])
  p @commander
  erb :"commanders/show"
end

get '/commanders/:id/edit' do
  @commander = Commander.find(params[:id])
  erb :"commanders/edit"
end


# controller for uploading clips and pictures #

  get '/commanders/:commander_id/clips/:id' do
    erb :'clips/show'
  end

  get '/commanders/:commander_id/clips' do
    @clips = Commander.clips
    erb :'clips/index'
  end

  post '/commanders/:commander_id/clips' do
    @commander =  Commander.find(params[:commander_id])
    @clip = Clip.new(@commander.id)
    if @clip.save
      p @clip.id
      redirect "/commanders/#{@commander.id}/clips/#{@clip.id}"
    end
  end

end
