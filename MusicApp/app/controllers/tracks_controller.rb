class TracksController < ApplicationController

  def new
    @track = Track.new
    render :new
  end

  def create
  end

  def edit
    @track = Track.find_by(id: params[:id])
    render :edit
  end

  def update
  end

  def show
  end

  def destroy
  end

end
