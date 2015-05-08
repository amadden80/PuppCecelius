class PuppyNamesController < ApplicationController

  def index
    @puppy_names = PuppyName.all.order(:vote_count)
    @puppy_name=PuppyName.new()
  end

  def create
    puppy_name = PuppyName.create( puppy_name_params )
    redirect_to "/puppy_names" # Decision to go to all puppy names
  end

  def destroy
    PuppyName.destroy(params[:id])
    redirect_to "/puppy_names"
  end

  private

  def puppy_name_params
    params.require(:puppy_name).permit(:name, :vote_count)
  end

end
