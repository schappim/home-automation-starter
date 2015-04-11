#!/usr/bin/env ruby

require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'
set :port, 80


get '/' do

  # Get the Temperature
  @temperature = ""

  # Get the Pressure
  @ pressure = 1000000

  erb :index
end

post '/camera/refresh' do
  # Take a new photo here
  puts "="*100
  puts "I'm taking a photo right now"
  puts "="*100

  ### put the command to take a photo here ###

  #######

  "1"
end

post '/led/:led/:status' do

  led = params[:led]
  status = params[:status]

  if status == "On"
  	# Put the command to turn on the LED here.
  else
  	# Put the command to turn off the LED here. 
  end

  puts "\n\n\n\n"
  puts "*"*100
  puts "LED: #{led}, Status: #{status}"
  puts "*"*100
  # Put LED turn on / turn off code here

  sleep 0.1
  "1"
end
