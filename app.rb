require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'IRB'

set :database, "sqlite3:leprosorium.db"
 
class Post <ActiveRecord::Base
	validates :name, presence: true
	validates :datestamp, presence: true
	validates :content, presence: true
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
	@p = Post.new
erb :new
end

post '/new' do
    @p = Post.new params[:post]
    @p.save

    if @p.save
    erb "<p>Thank you!</p>"
    else
 	@error = @p.errors.full_messages.first
erb :new
 	end    

       # @db.execute 'insert into Posts (youname, content, created_date) values (?,?,datetime())',[youname, content]
        redirect to '/'
        #erb "You typed: #{youname}, #{content}"
end
