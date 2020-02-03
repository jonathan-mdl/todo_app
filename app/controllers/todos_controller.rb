class TodosController < ApplicationController
    before_action :set_todo, only: [:edit, :show, :update, :destroy, :complete]
    
    def index
    @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create 
        @todo = Todo.new(todo_params)
        if @todo.save
            redirect_to todos_path
        else
            render :new
                
        end
    end

    def show 
    end

    def edit 
    end

    def update
        @todo.update(todo_params)
        redirect_to todos_path
    end

    def destroy
        @todo.destroy
        redirect_to todos_path
    end

    def complete 
        @todo.update_attributes(completed: true)
        redirect_to todos_path
    end

    def list
        @todo_completed = Todo.where(completed: true)   #trae todos los datos del modelo (recurso) Entries
        @todo_uncompleted = Todo.where(completed: false)
    end


    private
    def todo_params 
    params.require(:todo).permit(:completed, :description)
    end
    def set_todo
        @todo = Todo.find(params[:id])
    end

end
