class ConnectsController < ApplicationController
  def index
  end
  
  def new
   @connect = Connect.new
  end
  
  def create
    @connect = Connect.create(connect_params)
    redirect_to root_path
  end
  
  private
  
  def connect_params
    params.require(:connect).permit(:about)
  end
  
end
