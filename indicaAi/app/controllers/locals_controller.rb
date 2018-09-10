class LocalsController < ApplicationController

  #GET /locals
  def allLocals
    locals = Local.all
    render json: locals
  end

  #GET /locals/name/:name
  def searchLocals
    locals = Local.findByName(params[:name])
    render json: locals
  end

end
