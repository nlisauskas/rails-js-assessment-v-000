class UsersController < ApplicationController

  def index
    if params[:course_id]
      @course = Course.find_by_id(params[:course_id])
      @users = @course.users
    else
      @users = User.all
    end
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @users}
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
    @user.save
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
    else
      render :new
    end
  end

  def show
    @user = User.find_or_create_by(id: params[:id])
    @user.save
    if @user.rounds.size > 0
      @user.calculate_handicap
    end
    @round = Round.new
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @user}
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.update(user_params)
    @user.save
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :hometown, :handicap, :password, :password_confirmation, :provider, :uid, :oauth_token, :oauth_expires_at)
  end

  def logged_in?
    if !session[:user_id]
      redirect_to root_path
    end
  end
end
