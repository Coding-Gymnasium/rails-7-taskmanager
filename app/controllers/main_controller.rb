# frozen_string_literal: true

class MainController < ApplicationController
  def index; end

  def about
    # logger = Rails.logger
    # logger.info "Params:  #{params}"
    @created_by = 'Nico'
    @id = params[:id]
    @page = params[:page]
  end

  def hello
    redirect_to(action: 'index')
  end
end
