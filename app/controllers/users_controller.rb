class UsersController < ApplicationController
    before_action :set_current_user

  
  def index
  end
  
  def new
  end
  
  # このsecure_passwordの扱いが難しい
  def create
    @already = User.find_by(name: params[:name])
    if @already && params[:password] != ""
      flash[:notice] = "その名前はすでに使用されています"
      redirect_to("/users/new")
    else
      @user = User.new(name: params[:name],
                    password: params[:password],
                    admin: true)
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = '新規登録に成功しました'
        redirect_to('/')
      else
        flash[:notice] = "名前、パスワードが入力されていません"
        render("users/new")
      end
    end
  end
  
  def login_form
  end
  
  def login
    @user = User.find_by(name: params[:name])
    if @user.admin
      
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        flash[:notice] = 'ログインしました'
        redirect_to("/")
      else
        flash[:notice] = 'ユーザー,またはパスワードに誤りがあります'
        redirect_to("/users/login_form")
      end
    else
      flash[:notice] = "そのユーザーは削除されています"
      redirect_to("/users/login_form")
    end
  end
  
  def logout
    session[:user_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/")
  end
  
  def detail
    @user = User.find_by(id: @current_user.id)

  end
  
  def destroy
    @post = Todo.where(user_id: @current_user.id)
    @post.destroy_all
    @user = User.find_by(id: @current_user.id)
    @user.admin = false
    @user.save
    session[:user_id] = nil
    flash[:notice] = "ユーザーを削除しました"
    redirect_to("/")
  end

end
