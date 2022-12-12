class Public::EndUsersController < ApplicationController
  def index
  end

  def show
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
