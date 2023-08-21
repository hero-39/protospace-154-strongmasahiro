class PrototypesController < ApplicationController
  def index
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

end
