class CreatePosts < ActiveRecord::Migration[5.2]
  def change

  	create_table :posts do |t|
  		t.text :name
  		t.text :datestamp
  		t.text :content

  		t.timestamp
  	end
  end
end
