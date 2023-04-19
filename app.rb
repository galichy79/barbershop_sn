
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'bundler/setup'


  
  
  get '/' do 
    erb :index
  end
  
 
 
 
  
  
  get '/about' do 
    erb :about
  
  end
  
  get '/visit' do 
    erb :visit
  
  end

  get '/pricing' do
    erb :pricing

 end