class TasksController < ApplicationController
    def index
        @task = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        Task.create(task_params)
    end

    private
    def user_params
        params.require(:user).permit(:name, :age)
    end
end
