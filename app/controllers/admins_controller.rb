class AdminsController < ApplicationController
  before_action :ensure_admin
  def show
    @users = User.where(approved: params[:approved] || [true, false])
  end
  private
  def ensure_admin
    unless current_user.is_admin?
      flash[:errors] ||= []
      flash[:errors] << "You are not an admin."
      redirect_to root_url
    end
  end
end
