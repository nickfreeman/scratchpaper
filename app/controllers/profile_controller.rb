class ProfileController < ApplicationController
  before_filter :authenticate_user!

  def index
  	@user = current_user
  end

  def show
  	@user = User.find(params[:id])
  end

  def update
  	@user = current_user
    if @user.update_attributes(params[:avatar])
      redirect_to profile_index_path, :notice => "Profile updated."
    else
      redirect_to profile_index_path, :alert => "Unable to update profile."
    end
  end
end
