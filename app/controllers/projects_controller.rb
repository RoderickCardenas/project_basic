class ProjectsController < ApplicationController

    #index | READ
    def index
        @projects = Project.all
    end

    #new | READ
    def new
        @project = Project.new
    end

    #show | READ
    def show
        @project = Project.find(params[:id])
    end

    #create | CREATE
    def create
        @project = Project.create(project_params)
        redirect_to project_path(@project)
    end

    #edit | READ
    def edit
        @project = Project.find(params[:id])
    end

    #update | UPDATE
    def update
        @project = Project.find(params[:id])
        @project.update(project_params)
        redirect_to project_path(@project)
    end


    #destroy | DESTROY
    def destroy
        Project.destroy(params[:id])
        redirect_to projects_path
    end

    private

    def project_params
        params.require(:project).permit(:name, :description)
    end
end
