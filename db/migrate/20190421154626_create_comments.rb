class CreateComments < ActiveRecord::Migration[5.2]
  def change

  	create_table :comments do |t|
  		t.text :name
  		t.text :datestamp
  		t.text :text
  		t.text :post_id

  		t.timestamp
  	end
  end
end
