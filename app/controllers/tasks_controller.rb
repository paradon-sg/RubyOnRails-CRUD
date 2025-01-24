class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Current.user.tasks
  end

  def create
    @task = Task.new(**task_params, user_id: Current.user.id)
    render json: {}, status: :no_content if @task.save
  end

  def update
    @task = Task.find(params[:id])
    @task.attributes = task_params

    if @task.title.empty?
      @task.destroy
      render json: {}, status: :no_content
    else
      @task.update(task_params)
      render json: {}, status: :unprocessable_entity
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail)
  end
end
