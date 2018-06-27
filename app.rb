require_relative 'config/environment'

class App < Sinatra::Base
  # READ's the information, that we want to change
  get '/reverse' do
    erb :reverse
  end

  # CREATE's the information that we got above
  post '/reverse' do
    # Creating an instance variable in a controller method (route)
    # lets the contents become 'visible' to the erb file to which it renders
    original_string = params["string"]
    @reversed_string =  original_string.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    # define an instance variable and set it equal to an array containing a string of names
    # inside of the '/freinds' ROUTE
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    # BELOW will will render the friends page
    erb :friends
  end
end
