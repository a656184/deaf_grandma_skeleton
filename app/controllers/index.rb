get '/' do
  @grandma = params[:user_input]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  user_input = params[:user_input]
  if user_input == user_input.upcase
    @grandma = "That's right, my mashed potatoes are the best!"
  else
    @grandma = "Speak up, kiddo!!"
  end
  erb :index
  # redirect "/?grandma=#{user_input}"
  # "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
end
