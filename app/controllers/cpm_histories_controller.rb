class CpmHistoriesController < ApplicationController
  before_action :set_cpm_history, only: [:show, :edit, :update, :destroy]

  # GET /cpm_histories
  # GET /cpm_histories.json
  def index
    @cpm_histories = CpmHistory.all
  end

  # GET /cpm_histories/1
  # GET /cpm_histories/1.json
  def show
  end

  # GET /cpm_histories/new
  def new
    @cpm_history = CpmHistory.new
  end

  # GET /cpm_histories/1/edit
  def edit
  end

  # POST /cpm_histories
  # POST /cpm_histories.json
  def create
    @cpm_history = CpmHistory.new(cpm_history_params)

    respond_to do |format|
      if @cpm_history.save
        format.html { redirect_to @cpm_history, notice: 'Cpm history was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_history }
      else
        format.html { render :new }
        format.json { render json: @cpm_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_histories/1
  # PATCH/PUT /cpm_histories/1.json
  def update
    respond_to do |format|
      if @cpm_history.update(cpm_history_params)
        format.html { redirect_to @cpm_history, notice: 'Cpm history was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_history }
      else
        format.html { render :edit }
        format.json { render json: @cpm_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_histories/1
  # DELETE /cpm_histories/1.json
  def destroy
    @cpm_history.destroy
    respond_to do |format|
      format.html { redirect_to cpm_histories_url, notice: 'Cpm history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_history
      @cpm_history = CpmHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_history_params
      params.require(:cpm_history).permit(:cpm_user_id, :name, :cpm_project_id, :cpm_task_id, :cpm_issue_id)
    end
end
