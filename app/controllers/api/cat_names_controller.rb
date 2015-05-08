class Api::CatNamesController < ApplicationController

  def index
    cat_names = CatName.all
    render json: cat_names # API: To be consummed by javascript
  end

  def create
    cat_names = CatName.create( cat_name_params )
    render json: cat_names  # API: To be consummed by javascript
  end

  private

  def cat_name_params
    params.require(:cat_name).permit(:name)
  end

end
