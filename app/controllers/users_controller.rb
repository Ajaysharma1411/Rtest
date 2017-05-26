class UsersController < ApplicationController

	def new
		
	
	end
 
    def index
    @users = User.all
    end

    def create
    @user = User.new(user_params)
     
     if @user.save
      redirect_to @user
  else
  	render 'new'
    end
end

 def show
 	@user = User.find(params[:id])
 	end
   
def login
  @user = User.find_by_UserName(params[:UserName])
  if @user && User.find_by_Password(params[:Password])
     redirect_to @users

   else
    
end
end

def logged_in

  end

    private
    def user_params
  params.require(:user).permit(:Fname,:Lname,:UserName,:Email,:Password,:Image)
    end
end
