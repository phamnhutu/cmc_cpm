class CpmProcessesController < ApplicationController
  before_action :set_cpm_process, only: [:show, :edit, :update, :destroy]

  # GET /cpm_processes
  # GET /cpm_processes.json
  def index
    @cpm_processes = CpmProcess.all
  end

  # GET /cpm_processes/1
  # GET /cpm_processes/1.json
  def show
  end

  # GET /cpm_processes/new
  def new
    @cpm_process = CpmProcess.new
  end

  # GET /cpm_processes/1/edit
  def edit
  end

  # POST /cpm_processes
  # POST /cpm_processes.json
  def create
    @cpm_process = CpmProcess.new(cpm_process_params)

    respond_to do |format|
      if @cpm_process.save
        format.html { redirect_to @cpm_process, notice: 'Cpm process was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_process }
      else
        format.html { render :new }
        format.json { render json: @cpm_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_processes/1
  # PATCH/PUT /cpm_processes/1.json
  def update
    respond_to do |format|
      if @cpm_process.update(cpm_process_params)
        format.html { redirect_to @cpm_process, notice: 'Cpm process was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_process }
      else
        format.html { render :edit }
        format.json { render json: @cpm_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_processes/1
  # DELETE /cpm_processes/1.json
  def destroy
    @cpm_process.destroy
    respond_to do |format|
      format.html { redirect_to cpm_processes_url, notice: 'Cpm process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_process
      @cpm_process = CpmProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_process_params
      params.require(:cpm_process).permit(:name)
    end
end
