
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'bundler/setup'


  
  get '/' do 
    erb :index
  end
    
  get '/about' do 
    @error = 'something wrong!'
    erb :about
  
  end
  
  get '/visit' do 
    erb :visit
  end

  get '/pricing' do
    erb :pricing
  end

  
  get '/contacts' do
    'Phone: 111222'
  end

  post '/about' do
     "OK"
  end

  post '/visit' do
    @username = params[:username]
    @phone = params[:phone]
    @datetime = params[:datetime]
    @barber = params[:barber]
    @color = params[:color]

    if @username == ''
      @error = 'Введите имя'
      r
    end

    if @phone == ''
      @error = 'Введите ваш номер телефона'
      
    end

    if @error !=''
      @error = 'Неправильная дата и время'
    end

    if @error != ''
      return erb :visit
    end
    

    erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"
  end
