class Api::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render "index.json.jb"
  end

  def create
    render json: { message: "create action" }
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    render json: { message: "update action" }
  end

  def destroy
    render json: { message: "destroy action" }
  end
end
