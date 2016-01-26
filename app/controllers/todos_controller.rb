class TodosController < ApplicationController
  before_action :set_todo, only: [:destroy, :edit, :update]

  def index
    @todos = Todo.all.order(:completion_date)
    @todo = Todo.new
  end

  def create
    @todos = Todo.all.order(:completion_date)
    @todo = Todo.new( todo_params )
    if @todo.save
      redirect_to todos_path, notice: "Created todo!"
    else
      flash.now[:alert] = "Couldn't create."
      render :index
    end
  end

  def edit
  end

  def update
    if @todo.update( todo_params )
      redirect_to todos_path, notice: "Updated todo!"
    else
      flash.now[:alert] = "Couldn't update."
      render :edit
    end
  end

  def destroy
    if @todo.destroy
      redirect_to todos_path, notice: "Destroyed todo!"
    else
      redirect_to todos_path, alert: "Could not destroy."
    end
  end

  private

  def set_todo
    @todo = Todo.find( params[ :id ] )
  end

  def todo_params
    params.require(:todo).permit( :task, :completion_date )
  end
end

