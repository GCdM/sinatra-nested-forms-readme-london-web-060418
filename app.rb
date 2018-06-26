require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :new
  end

  post '/student' do
    @student = Student.new(params[:student])

    params[:student][:courses].each do |info|
      Course.new(info)
    end

    @courses = Course.all

    erb :student
  end
end
