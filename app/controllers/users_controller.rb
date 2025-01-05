class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = Prototype.new
    @prototypes = @user.prototype.includes(:comment)
  end

  private
  def user_params
    params.require(:user).permit(:name,:profile,:occupation,:position).merge(user_id: current_user.id)
  end
end

