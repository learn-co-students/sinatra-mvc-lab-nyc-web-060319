require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    word = PigLatinizer.new
    @text = word.piglatinize(params[:user_phrase])
    erb :translation
  end




end
