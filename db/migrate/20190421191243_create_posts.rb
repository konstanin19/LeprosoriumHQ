class CreatePosts < ActiveRecord::Migration[5.2]
  def change

  	    create_table :post do |t|
  	    	t.text :name
    		t.text :datestamp
    		t.text :text
    		
    		t.timestamps
	end
  end
end
