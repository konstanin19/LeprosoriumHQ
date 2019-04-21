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
	#@posts = @db.execute 'select * from Posts order by id desc'
	erb :index 		
end

get '/new' do
  erb :new
end

post '/new' do
        content = params[:content]
        youname = params[:name]
        if content.length <= 0
                @error = 'Type post text'
                return erb :new
        end

        if youname.length <= 0
                @error = 'Type you name'
                return erb :new
        end

       # @db.execute 'insert into Posts (youname, content, created_date) values (?,?,datetime())',[youname, content]
        redirect to '/'
        #erb "You typed: #{youname}, #{content}"
end
