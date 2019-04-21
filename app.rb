require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'IRB'

set :database, "sqlite3:leprosorium.db"
 
class Post <ActiveRecord::Base
end

class Comment < ActiveRecord::Base
end
rend
get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end