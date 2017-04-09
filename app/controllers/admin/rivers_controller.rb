class Admin::RiversController < Admin::BaseController

  def show
    @river = River.find(params[:id])
  end


end
