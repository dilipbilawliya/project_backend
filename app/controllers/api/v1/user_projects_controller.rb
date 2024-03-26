class Api::V1::UserProjectsController < ApplicationController
  def index
    user_projects = User.first.user_projects
    serializer_json = user_projects.map do |user_project|
      {
        user_progess: user_project.progress,
        project_name: user_project.project.name,
        project_image: user_project.project.image
        # user_email: user_project.user
        # user_name: user_project.project.image
      }
    end
    render json: serializer_json, status: :ok
  end
end