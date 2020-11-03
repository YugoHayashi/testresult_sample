class UsersController < ApplicationController
  

  def index
    @q = User.ransack(params[:q])
    @users = @q.result.kaminari_page(params[:page]).order(updated_at: "DESC")
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "登録が完了しました。"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "変更が完了しました。"
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).discard
    flash[:success] = "削除完了"
    redirect_to users_url
  end

  private

    def user_params
      params.require(:user).permit(:name1, :name2, :email, :address, :password)
    end

end
