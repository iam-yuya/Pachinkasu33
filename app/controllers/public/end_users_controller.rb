class Public::EndUsersController < ApplicationController
  def index
    @end_users = EndUser.all
  end

  def show
    @end_user = EndUser.find(params[:id])
    @end_user.id = current_end_user.id
  end

  def edit
  end

  def update
  end


  private

  def end_user_params
    params.require(:end_user).permit(:name, :unique_id, :introduction)
  end
end
