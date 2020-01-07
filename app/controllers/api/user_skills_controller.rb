class Api::UserSkillsController < ApplicationController
  def index
    @user_skills = UserSkill.all
    render "index.json.jb"
  end

  def create
    @user_skill = UserSkill.new(
      user_id: params[:user_id],
      skill_id: params[:skill_id],
    )
    @user_skill.save
    render "show.json.jb"
  end

  def show
    @user_skill = UserSkill.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @user_skill = UserSkill.find_by(id: params[:id])
    @user_skill.user_id = params[:user_id] || @user_skill.user_id
    @user_skill.skill_id = params[:skill_id] || @user_skill.skill_id
    @user_skill.save
    render "show.json.jb"
  end

  def destroy
    @user_skill = UserSkill.find_by(id: params[:id])
    @user_skill.destroy
    render json: { message: "User skill deleted" }
  end
end
