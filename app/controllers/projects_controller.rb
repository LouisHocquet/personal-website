class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @expertises = @project.expertises
    @tools = @project.tools
  end

  def new
    @project = Project.new
    @expertises = Expertise.all
    @tools = Tool.all
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    @expertises = Expertise.all
    @tools = Tool.all
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :url, :cover_photo, :cover_photo_mobile, :context, :mission,
                                    :highlight, expertise_ids: [], tool_ids: [], photos: [])
  end
end
