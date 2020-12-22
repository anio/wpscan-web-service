#!/usr/bin/env ruby

require 'sinatra'

before do content_type 'text/plain' end


get '/scan-this-wp' do

  token = params[:token]
  addr  = params[:addr]

  valid_token =  token && token.match(/^[\w]+$/)
  valid_addr  = addr && addr.match(/^https?:\/\/[a-z\.\/]+$/)

  if valid_token && valid_addr

    cmd   = '/usr/local/bundle/bin/wpscan'

    begin
      %x[#{cmd} --force --update --api-token #{token} --url #{addr}]
    rescue Exception => e
      e.message
    end

  else
    'Bad addr'
  end
end
