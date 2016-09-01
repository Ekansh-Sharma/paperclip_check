class ProjectController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show 
  end

  def create
    @project = Project.create( project_params )
    redirect_to project_index_path
  end

  private

  def project_params
    params.require(:project).permit(:image)
  end

end
