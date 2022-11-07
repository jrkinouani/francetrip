class TownsController < ApplicationController
  before_action :set_town, only: %i[edit show destroy update]

  def new
    @town = Town.new
  end

  def index
    @towns = Town.all
  end

  def create
    @town = Town.new(params_town)
    point
    if @town.save
      redirect_to town_path(@town)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    @town.update(params_town)
    redirect_to town_path(@town)
    end 
  end

  def destroy
    @town.destroy
    redirect_to town_path status: :see_other
  end

  private

  def point
    @town.score = @town.cost + @town.safety + @town.vibe + @town.culture
    @town.sightseeing
  end

  def set_town
    @town = Town.find(params[:id])
  end

  def params_town
    params.require(:town).permit(:photo, :name, :region, :state, :cost, :safety, :vibe, :culture, :sightseeing, :score)
  end
end
