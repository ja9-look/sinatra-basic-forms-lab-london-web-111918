require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end 
  
  post '/puppy' do 
    @puppy = Puppy.new(params[:name], params[:age], params[:breed])
    @name = @puppy.name
    @age = @puppy.age
    @breed = @puppy.breed 
    erb :display_puppy
  end

end
