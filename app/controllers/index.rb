get '/' do
  if session[:user_id]
    @user = User.find(session[:user_id])
    # erb :'index' #create this
  else
    # erb :'' #(not logged in)
  end
end

# get '/secret' do
#   redirect '/sessions/new' unless session[:user_id]
#   "Secret area!"
# end

