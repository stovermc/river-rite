class Admin::RiversController < Admin::BaseController

  def new
    @state = State.find(params[:state_id])
    @river = River.new
  end

  def create
    @state = State.find(params[:state_id])
    @river = @state.rivers.new(river_params)
    if @river.save
      flash[:success] = "#{@river.name} successfully added"
      redirect_to admin_state_rivers_path
    else
      flash[:incomplete] = "Please fill in every form item."
      render :new
    end

  end

  def show
    @river = River.find(params[:id])
  end

  def edit
    @state = State.find(params[:state_id])
    @river = River.find(params[:id])
  end

  def update
    if @river = River.update(river_params)
      flash[:updated] = "#{@river.name} successfully updated"
      redirect_to admin_state_path(@river.state)
    else
      render :edit
    end
  end

  def destroy
    @river = River.find(params[:id]).destroy
    flash[:destroy] = "River successfully deleted"
    redirect_to admin_state_path(@river.state)
  end

private

  def river_params
    params.require(:river).permit(:name, :put_in, :take_out, :permit_cost,
                                  :permit_type, :length, :managing_agency,
                                  :application_website)
  end

end
