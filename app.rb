require_relative "config/environment"

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    changer = PigLatinizer.new
    text = params["user_phrase"]
    @ptext = changer.piglatinize(text)
    erb :output
  end
end
