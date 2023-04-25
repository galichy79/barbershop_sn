
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'bundler/setup'
require 'sqlite3'

db = SQLite3::Database.new 'test.sqlite'


  
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

    hh = { :username => 'Введите имя',
           :phone => 'Введите телефон', 
           :datetime => 'Введите дату и время' }



    @error = hh.select {|key,_| params[key] == ""}.values.join(", ")

    if @error != ''
      return erb :visit
    end




    # hh.each do |key, value|

      # если параметр пуст
      # if params[key] == ''
        # переменной error присвоить value из хеша hh
        # (а value из хеша hh это сообщение об ошибке)
        # т.e. переменной error присвоить сообщение об ошибке
        #@error = hh[key]

        # вернуть представление visit
        # return erb :visit
          
      # end
    # end
    

    erb "OK, username is #{@username}, #{@phone}, #{@datetime}, #{@barber}, #{@color}"
  end
