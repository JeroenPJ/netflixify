class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :edit, :update, :destroy]

  def index
    @series = Series.where(user: current_user)
  end

  def show
  end

  def new
    @series = Series.new
  end

  def create
    @series = Series.new(series_params)

    if @series.save
      redirect_to series_path(@series)
    else
      render 'series/new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @series.destroy if @series.user == current_user
  end

  private

  def series_params
    params[:series].permit(:name, :url)
  end

  def set_series
    @series = Series.find(params[:id])
  end
end
