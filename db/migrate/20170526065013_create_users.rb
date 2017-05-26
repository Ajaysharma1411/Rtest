class CreateUsers < ActiveRecord::Migration
  def change
    create_table :Users do |t|
    	t.string :Fname
    	t.string :Lname
    	t.string :UserName
    	t.string :Email
    	t.integer :Password
    	t.string :image

         
      t.timestamps null: false
    end
  end
end
