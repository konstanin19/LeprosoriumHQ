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

before do
@posts = Post.all
end

get '/' do
	#@results = @db.execute 'select * from Posts order by id desc'
	erb :index 		
end