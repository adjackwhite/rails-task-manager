class TasksController < ApplicationController

  def index
    @all_tasks = Task.all
  end

  def show
    @id = params[:id]
    @task = Task.find(@id)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end

end
