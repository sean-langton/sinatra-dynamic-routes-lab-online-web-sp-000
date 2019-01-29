require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
  end

  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @string = params[:number].to_i.times do "#{params[:phrase].to_s}" end
    "#{@string}"
  end

end
