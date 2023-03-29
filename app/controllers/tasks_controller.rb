class TasksController < ApplicationController
  def index
    @tasks = ['Fold laundry', 'Sweep proch', 'Wash dishes', 'Now lawn']
  end

  def new; end

  def edit; end
end
