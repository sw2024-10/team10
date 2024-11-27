class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    password = BCrypt::Password.create(params[:user][:pass])
    @user = User.new(uid: params[:user][:uid], pass: password)
    if @user.save
      redirect_to login_path, notice: "登録が完了しました。ログインしてください。"
    else
      flash[:alert] = "登録に失敗しました"
      render :new, status: 422
    end
  end
end