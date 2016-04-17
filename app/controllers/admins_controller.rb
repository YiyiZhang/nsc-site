class AdminsController < ApplicationController
  before_action :ensure_admin
  before_action :authenticate_user!
  def show
    @users = User.where(approved: params[:approved] || [true, false])
  end
  def edit_user
    @user = User.find(params[:id])
    if (!(user_params[:is_admin] == @user.is_admin) || current_user.account_type > 0) && !current_user.is_admin
      operation_not_permitted
    else
      flash[:notices] ||= []
      flash[:notices] << "User updated."
      @user.update(user_params)
      @user.save
      redirect_to admin_url
    end

  end
  private
  def operation_not_permitted
    flash[:errors] ||= []
    flash[:errors] << "Operation not permitted."
    redirect_to root_url
  end
  def user_params
    params.require(:user).permit(:account_type, :is_admin, :approved)
  end
  def ensure_admin
    unless current_user.is_admin? || current_user.account_type == 0
      operation_not_permitted
    end
  end
end
