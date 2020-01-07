class Api::CapstonesController < ApplicationController
  def index
    @capstones = Capstone.all
    render "index.json.jb"
  end

  def create
    @capstone = Capstone.new(
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      user_id: params[:user_id],
    )
    @capstone.save
    render "show.json.jb"
  end

  def show
    @capstone = Capstone.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.description || @capstone.description
    @capstone.url || @capstone.url
    @capstone.screenshot || @capstone.screenshot
    @capstone.user_id = params[:user_id] || @capstone.user_id
    @capstone.save
    render "show.json.jb"
  end

  def destroy
    @capstone = Capstone.find_by(id: params[:id])
    @capstone.destroy
    render json: { message: "User skill deleted" }
  end
end
