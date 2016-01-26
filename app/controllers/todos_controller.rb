class TodosController < ApplicationController
  def index
    @todos = Todo.all.order(:completion_date)
  end
end
