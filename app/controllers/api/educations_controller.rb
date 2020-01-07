class Api::EducationsController < ApplicationController

def index
  @educations = Education.all
  render "index.json.jb"
end

def create
  @education = Education.new(
    id: params[:id],
    start_date: params[:start_date],
    end_date: params[:end_date],
    degree: params[:degree],
    university_name: params[:university_name],
    details: params[:details],
    )
  @education.save
  render "show.json.jb"
end

def show
  @education = Education.find_by(id: params[:id])
  render "show.json.jb"
end

def update
    @education = Education.find_by(id: params[:id])

    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date =  params[:end_date] || @education.end_date
    @education.degree =  params[:degree] || @education.degree
    @education.university_name =  params[:university_name] || @education.university_name
    @education.details = params[:details] || @education.details
    

    @education.save

    render "show.json.jb"

end

def destroy
  education = Education.find_by(id: params[:id])
  education.destroy
  render json: {message: "User successfully deleted!"}
  end

end
