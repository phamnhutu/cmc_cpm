class CpmProjectsController < ApplicationController
  before_action :set_cpm_project, only: [:show, :edit, :update, :destroy]

  # GET /cpm_projects
  # GET /cpm_projects.json
  def index
    @cpm_projects = CpmProject.all
  end

  # GET /cpm_projects/1
  # GET /cpm_projects/1.json
  def show
  end

  # GET /cpm_projects/new
  def new
    @cpm_project = CpmProject.new
  end

  # GET /cpm_projects/1/edit
  def edit
  end

  # POST /cpm_projects
  # POST /cpm_projects.json
  def create
    @cpm_project = CpmProject.new(cpm_project_params)

    respond_to do |format|
      if @cpm_project.save
        format.html { redirect_to @cpm_project, notice: 'Cpm project was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_project }
      else
        format.html { render :new }
        format.json { render json: @cpm_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_projects/1
  # PATCH/PUT /cpm_projects/1.json
  def update
    respond_to do |format|
      if @cpm_project.update(cpm_project_params)
        format.html { redirect_to @cpm_project, notice: 'Cpm project was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_project }
      else
        format.html { render :edit }
        format.json { render json: @cpm_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_projects/1
  # DELETE /cpm_projects/1.json
  def destroy
    @cpm_project.destroy
    respond_to do |format|
      format.html { redirect_to cpm_projects_url, notice: 'Cpm project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_project
      @cpm_project = CpmProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_project_params
      params.require(:cpm_project).permit(:cpm_user_id, :name, :start_date, :end_date, :status)
    end
end
