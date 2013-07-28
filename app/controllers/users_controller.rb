class UsersController < ApplicationController
  def show
  	    @user = User.find(params[:id])
  	    @pins = @user.pins.page(params[:page]).per_page(10) # everything starting at .page is for pagination stuff
  end
end
