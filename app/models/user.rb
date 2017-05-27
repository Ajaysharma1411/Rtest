class User < ActiveRecord::Base
	

has_many :friends
has_many :userfriends  	
validates :UserName, :presence => true, :length =>{ :in => 3..15 } 

validates :Email, :presence => true, :uniqueness => true

validates :Password, :confirmation => true

validates_length_of  :Password, :in =>4...26, :on => :create

	
	


	
end
