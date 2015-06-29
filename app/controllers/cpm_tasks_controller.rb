class CpmTasksController < ApplicationController
  before_action :set_cpm_task, only: [:show, :edit, :update, :destroy]

  # GET /cpm_tasks
  # GET /cpm_tasks.json
  def index
    @cpm_tasks = CpmTask.all
  end

  # GET /cpm_tasks/1
  # GET /cpm_tasks/1.json
  def show
  end

  # GET /cpm_tasks/new
  def new
    @cpm_task = CpmTask.new
  end

  # GET /cpm_tasks/1/edit
  def edit
  end

  # POST /cpm_tasks
  # POST /cpm_tasks.json
  def create
    @cpm_task = CpmTask.new(cpm_task_params)

    respond_to do |format|
      if @cpm_task.save
        format.html { redirect_to @cpm_task, notice: 'Cpm task was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_task }
      else
        format.html { render :new }
        format.json { render json: @cpm_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_tasks/1
  # PATCH/PUT /cpm_tasks/1.json
  def update
    respond_to do |format|
      if @cpm_task.update(cpm_task_params)
        format.html { redirect_to @cpm_task, notice: 'Cpm task was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_task }
      else
        format.html { render :edit }
        format.json { render json: @cpm_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_tasks/1
  # DELETE /cpm_tasks/1.json
  def destroy
    @cpm_task.destroy
    respond_to do |format|
      format.html { redirect_to cpm_tasks_url, notice: 'Cpm task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_task
      @cpm_task = CpmTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_task_params
      params.require(:cpm_task).permit(:cpm_user_id, :cpm_project_id, :name, :assigned_to, :deadline, :cpm_process_id, :cpm_priority_id, :man_hour)
    end
end
