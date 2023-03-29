# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @page = params[:page].to_i
    @tasks = ['Fold laundry', 'Sweep proch', 'Wash dishes', 'Now lawn']
  end

  def new; end

  def edit; end
end
