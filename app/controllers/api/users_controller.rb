class Api::UsersController < ApplicationController

def index
  @users = User.all
  render "index.json.jb"
end

def create
  @user = User.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password],
    phone_number: params[:phone_number],
    bio: params[:bio],
    linkedin: params[:linkedin],
    twitter: params[:twitter],
    website: params[:website],
    resume: params[:resume],
    github: params[:github],
    photo: params[:photo]
    # user_id: current_user.id
    user_id: 1
    )
  @user.save
  render "show.json.jb"
end

def show
  @user = User.find_by(id: params[:id])
  render "show.json.jb"
end

def update
    @user = User.find_by(id: params[:id])

    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name =  params[:last_name] || @user.last_name
    @user.email =  params[:email] || @user.email
    @user.password =  params[:password] || @user.password
    @user.phone_number = params[:phone_number] || @user.phone_number
    @user.bio =  params[:bio] || @user.bio
    @user.linkedin = params[:linkedin] || @user.linkedin
    @user.twitter = params[:twitter] || @user.twitter
    @user.website =  params[:website] || @user.website
    @user.resume =  params[:resume] || @user.resume
    @user.github =  params[:github] || @user.github
    @user.photo = params[:photo] || @user.photo

    @user.save

    render "show.json.jb"

end

def destroy
  user = User.find_by(id: params[:id])
  user.destroy
  render json: {message: "User successfully deleted!"}
  end

end
