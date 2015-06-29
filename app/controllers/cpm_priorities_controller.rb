class CpmPrioritiesController < ApplicationController
  before_action :set_cpm_priority, only: [:show, :edit, :update, :destroy]

  # GET /cpm_priorities
  # GET /cpm_priorities.json
  def index
    @cpm_priorities = CpmPriority.all
  end

  # GET /cpm_priorities/1
  # GET /cpm_priorities/1.json
  def show
  end

  # GET /cpm_priorities/new
  def new
    @cpm_priority = CpmPriority.new
  end

  # GET /cpm_priorities/1/edit
  def edit
  end

  # POST /cpm_priorities
  # POST /cpm_priorities.json
  def create
    @cpm_priority = CpmPriority.new(cpm_priority_params)

    respond_to do |format|
      if @cpm_priority.save
        format.html { redirect_to @cpm_priority, notice: 'Cpm priority was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_priority }
      else
        format.html { render :new }
        format.json { render json: @cpm_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_priorities/1
  # PATCH/PUT /cpm_priorities/1.json
  def update
    respond_to do |format|
      if @cpm_priority.update(cpm_priority_params)
        format.html { redirect_to @cpm_priority, notice: 'Cpm priority was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_priority }
      else
        format.html { render :edit }
        format.json { render json: @cpm_priority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_priorities/1
  # DELETE /cpm_priorities/1.json
  def destroy
    @cpm_priority.destroy
    respond_to do |format|
      format.html { redirect_to cpm_priorities_url, notice: 'Cpm priority was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_priority
      @cpm_priority = CpmPriority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_priority_params
      params.require(:cpm_priority).permit(:name, :color)
    end
end
