class Admin::StatesController < Admin::BaseController

  def new
    @state = State.new
  end

  def create
    @state = State.new(state_params)
    if @state.save
      flash[:success] = "New state added!"
      redirect_to admin_states_path
    else
      render :new
    end
  end

  def index
    @states = State.all
  end

private

  def state_params
    params.require(:state).permit(:name)
  end
end
