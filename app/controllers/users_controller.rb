class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    @users = User.all

    render json: @users
  end

  def show
  end

  def create
    # インスタンスを　model　から作成する
    @user = User.new(user_params)
    #　インスタンスを　DB　に保存する
    @user.save!
    #　ｊson　として値を返す
    render :show
  end

  def update
    #　探してきたレコードを更新する
    @user.update!(user_params)
    # json　として値を返す
    render :show
  end
  def destroy
    #　探してきたレコードを削除する
     @user.destroy
    #　ｊson　として値を返す
    render :show
  end

 private
   def user_params
    params.require(:user).permit(:name, :account, :email)
   end
   def set_user
    @user = User.find(params[:id])
   end
end
