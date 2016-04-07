post '/sessions/new' do
  @user = User.find_by_email(params[:email])
  if @user && @user.authenticate(params[:password_plaintext])
    session[:user_id] = @user.id
    redirect "/"
 post '/sessions' do
  @user = User.find_by_email(params[:email])
  if @user.password == params[:password]
    session[:id] = @user.id
    redirect '/'
  else
    @error = "Sorry, but that email has already been taken"
    # the required field in the register form executes separate error
    redirect '/sessions/new'
  end
end

get '/sessions/new' do
  erb :'sessions/new'
end

delete '/sessions/:id' do
  session[:id] = nil
  redirect '/'
end
