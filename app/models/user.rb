class User < ActiveRecord::Base
	
validates :UserName, :presence => true, :length =>{ :in => 3..15 } 

validates :Email, :presence => true, :uniqueness => true

validates :Password, :confirmation => true

validates_length_of  :Password, :in =>4...26, :on => :create

has_many :friends, class_name: "User", 
                           foreign_key:"message_id" 	

	
	


	
end
