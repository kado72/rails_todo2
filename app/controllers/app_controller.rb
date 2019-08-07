class AppController < ApplicationController
    before_action :set_current_user
    before_action :authenticate_user

  def todo
    @switch = true
    @message = "編集"
    @todos = Todo.all.order(updated_at: "desc")
  end
  
  def post
    @todo = Todo.new(
      content: params[:content],
      user_id: @current_user.id)
    @todo.save
    flash[:notice] = '投稿完了しました'
    redirect_to("/app/todo")
  end
  
  def edit
    @todos = Todo.where(user_id: @current_user.id).order(updated_at: "desc")
  end
  
  def update 
    @todo = Todo.find_by(id: params[:id])
    @todo.content = params[:content]
    if @todo.save
      flash[:notice] = "内容を更新しました"
      redirect_to("/app/todo/edit")
    else
      flash[:notice] = "変更欄が未記入です"
      redirect_to("app/todo/edit")
    end
  end
  
  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    redirect_to("/app/todo/edit")
  end
  
  def star
    @todo = Todo.find_by(id: params[:id])
    if @todo.star
      @todo.star = false
      @todo.save
    else
      @todo.star = true
      @todo.save
    end
    redirect_to("/app/todo")
  end
end
