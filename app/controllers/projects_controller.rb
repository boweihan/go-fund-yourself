class ProjectsController < ApplicationController

  # before_action :ensure_logged_in, except: [:index]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @purchase = Purchase.new
  end

  def new
    @project = Project.new
    @project.shares.build
  end

  def create
    @project = Project.new(project_params)
    @project.user_id = current_user.id
    if @project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :max_shares, :picture_url, :deadline, shares_attributes: [:price, :share_type])
  end
end
