class MainController < ApplicationController
  def index
  end

  def about
    @created_by = 'Nico'
  end

  def hello
    redirect_to(action: 'index')
  end
end
