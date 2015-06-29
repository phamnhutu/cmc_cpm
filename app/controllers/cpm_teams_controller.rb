class CpmTeamsController < ApplicationController
  before_action :set_cpm_team, only: [:show, :edit, :update, :destroy]

  # GET /cpm_teams
  # GET /cpm_teams.json
  def index
    @cpm_teams = CpmTeam.all
  end

  # GET /cpm_teams/1
  # GET /cpm_teams/1.json
  def show
  end

  # GET /cpm_teams/new
  def new
    @cpm_team = CpmTeam.new
  end

  # GET /cpm_teams/1/edit
  def edit
  end

  # POST /cpm_teams
  # POST /cpm_teams.json
  def create
    @cpm_team = CpmTeam.new(cpm_team_params)

    respond_to do |format|
      if @cpm_team.save
        format.html { redirect_to @cpm_team, notice: 'Cpm team was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_team }
      else
        format.html { render :new }
        format.json { render json: @cpm_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_teams/1
  # PATCH/PUT /cpm_teams/1.json
  def update
    respond_to do |format|
      if @cpm_team.update(cpm_team_params)
        format.html { redirect_to @cpm_team, notice: 'Cpm team was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_team }
      else
        format.html { render :edit }
        format.json { render json: @cpm_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_teams/1
  # DELETE /cpm_teams/1.json
  def destroy
    @cpm_team.destroy
    respond_to do |format|
      format.html { redirect_to cpm_teams_url, notice: 'Cpm team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_team
      @cpm_team = CpmTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_team_params
      params.require(:cpm_team).permit(:name, :status)
    end
end
