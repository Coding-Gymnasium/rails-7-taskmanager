# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @page = params[:page].to_i
    @tasks = ['Fold laundry', 'Sweep proch', 'Wash dishes', 'Now lawn']
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def delete; end

  def destroy; end
end
