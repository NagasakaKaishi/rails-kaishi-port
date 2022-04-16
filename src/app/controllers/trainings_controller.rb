class TrainingsController < ApplicationController
  def new
    @training = current_user.training.build
  end

  def create
    def create
      @training = current_user.training.build(training_params)
      if @training.save
        redirect_to events_path
      else
        render 'trainings/new'
      end
    end
  end

  def index
    @trainings = current_user.training.all
  end

  def destroy
    @training = current_user.training.find(params[:id])
    @training.destroy
    flash[:success] = "deleted"
    redirect_to request.referrer || root_url
  end

  private
    # Only allow a list of trusted parameters through.
    def training_params
      params.require(:training).permit(:name)
    end
end
