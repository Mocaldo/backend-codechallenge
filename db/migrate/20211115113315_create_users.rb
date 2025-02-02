class CreateUsers < ActiveRecord::Migration[6.1]
  def change
  	if !table_exists? 'users'
    	create_table :users do |t|
    		t.string :first_name
    		t.string :last_name
    		t.boolean :admin, :default => false
      	t.timestamps
    	end
	end
  end
end
