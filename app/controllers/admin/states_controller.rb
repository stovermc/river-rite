class Admin::StatesController < Admin::BaseController

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      flash[:success] = "#{@state.name} successfully added!"
      redirect_to admin_states_path
    else
      render :new
    end
  end

  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
  end

  def edit
    @state = State.find(params[:id])
  end

  def update
    @state = State.new(state_params)
    if @state.save
      flash[:update] = "#{@state.name} successfully updated."
      redirect_to admin_states_path
    else
      render :edit
    end
  end

  def destroy
    state = State.find(params[:id])
    state.destroy
    flash[:destroy] = "#{state.name} successfully deleted."
    redirect_to admin_states_path
  end

private

  def state_params
    params.require(:state).permit(:name)
  end
end
