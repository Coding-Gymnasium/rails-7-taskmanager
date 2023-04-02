# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = Task.order(:position)
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    count = Task.count
    @task = Task.new(position: count + 1)
  end

  def create
    @task = Task.new(tasks_params)
    if @task.save
      redirect_to tasks_path
    else
      render('new')
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(tasks_params)
      redirect_to task_path(@task)
    else
      render('edit')
    end
  end

  def delete
    @task = Task.find(params[:task_id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def tasks_params
    params.require(:task).permit(:name, :position, :completed, :description)
  end
end
