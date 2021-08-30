class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        Task.create(task_params)
    end

    def show
        @tasks = Task.find(params[:id])
    end

    private
    def user_params
        params.require(:user).permit(:name, :age)
    end
end
