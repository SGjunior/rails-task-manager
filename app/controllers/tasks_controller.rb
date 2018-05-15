class TasksController < ApplicationController
  # CRUD

  # CREATE
    def new
      # Get a form.
      @task = Task.new
    end

    def create
      @task = Task.new(task_param_filter)
      # validate
      @task.save
      redirect_to tasks_path
    end

  # READ
    def index
      # show all instances
      @tasks = Task.all
    end

    def show
      # show a single instance
      @task = Task.find(params['id'])
    end

  # UPDATE
    def edit
      # Get a form
      @task = Task.find(params['id'])
    end

    def update
      @task = Task.find(params['id'])
      # update
      @task.update(task_param_filter)
      redirect_to tasks_path
    end

  #DELETE
    def destroy
      # delete instance
      @task = Task.find(params['id'])
      @task.delete
      redirect_to tasks_path
    end

  private

  def task_param_filter
    params.require(:task).permit(:title, :details)
  end
end
