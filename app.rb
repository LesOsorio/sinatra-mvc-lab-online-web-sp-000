require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input
    end

    post '/piglatinize' do
    @user_phrase = PigLatinizer.new(params[:user_phrase])
    binding.pry
    #piglatinize(params[:user_phrase])
    erb :result
  end
end
