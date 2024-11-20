class SessionsController < ApplicationController
  def new
    # ログインフォームの表示
  end

  def create
    user = User.find_by(uid: params[:uid])
    if user && BCrypt::Password.new(user.pass) == params[:pass]
      session[:login_uid] = user.uid
      redirect_to root_path, notice: "ログインしました"
    else
      flash[:alert] = "ログインに失敗しました"
      render :new, status: 422
    end
  end

  def destroy
    session.delete(:login_uid)
    redirect_to root_path, notice: "ログアウトしました"
  end
end