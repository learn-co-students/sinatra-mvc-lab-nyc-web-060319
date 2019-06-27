require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do #This gets params {:string => user-input}
        @latin_sentence = PigLatinizer.new(params[:string])
        erb :piglatinize
    end

    get '/piglatinize' do
        erb :piglatinize
    end

end