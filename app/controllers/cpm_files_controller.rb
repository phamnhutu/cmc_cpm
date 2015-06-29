class CpmFilesController < ApplicationController
  before_action :set_cpm_file, only: [:show, :edit, :update, :destroy]

  # GET /cpm_files
  # GET /cpm_files.json
  def index
    @cpm_files = CpmFile.all
  end

  # GET /cpm_files/1
  # GET /cpm_files/1.json
  def show
  end

  # GET /cpm_files/new
  def new
    @cpm_file = CpmFile.new
  end

  # GET /cpm_files/1/edit
  def edit
  end

  # POST /cpm_files
  # POST /cpm_files.json
  def create
    @cpm_file = CpmFile.new(cpm_file_params)

    respond_to do |format|
      if @cpm_file.save
        format.html { redirect_to @cpm_file, notice: 'Cpm file was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_file }
      else
        format.html { render :new }
        format.json { render json: @cpm_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_files/1
  # PATCH/PUT /cpm_files/1.json
  def update
    respond_to do |format|
      if @cpm_file.update(cpm_file_params)
        format.html { redirect_to @cpm_file, notice: 'Cpm file was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_file }
      else
        format.html { render :edit }
        format.json { render json: @cpm_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_files/1
  # DELETE /cpm_files/1.json
  def destroy
    @cpm_file.destroy
    respond_to do |format|
      format.html { redirect_to cpm_files_url, notice: 'Cpm file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_file
      @cpm_file = CpmFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_file_params
      params.require(:cpm_file).permit(:cpm_user_id, :cpm_task_id, :cpm_issue_id, :cpm_comment_id, :file_path)
    end
end
