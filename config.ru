require 'bundler/setup'
require 'volt/server'
require './app/init'

run Server.new.app
