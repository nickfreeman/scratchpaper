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
    if @user.update(profile_params)
      redirect_to profile_index_path, :notice => "Profile updated."
    else
      redirect_to profile_index_path, :alert => "Unable to update profile."
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:user).permit(:avatar)
    end
end
