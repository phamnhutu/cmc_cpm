class CpmIssuesController < ApplicationController
  before_action :set_cpm_issue, only: [:show, :edit, :update, :destroy]

  # GET /cpm_issues
  # GET /cpm_issues.json
  def index
    @cpm_issues = CpmIssue.all
  end

  # GET /cpm_issues/1
  # GET /cpm_issues/1.json
  def show
  end

  # GET /cpm_issues/new
  def new
    @cpm_issue = CpmIssue.new
  end

  # GET /cpm_issues/1/edit
  def edit
  end

  # POST /cpm_issues
  # POST /cpm_issues.json
  def create
    @cpm_issue = CpmIssue.new(cpm_issue_params)

    respond_to do |format|
      if @cpm_issue.save
        format.html { redirect_to @cpm_issue, notice: 'Cpm issue was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_issue }
      else
        format.html { render :new }
        format.json { render json: @cpm_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_issues/1
  # PATCH/PUT /cpm_issues/1.json
  def update
    respond_to do |format|
      if @cpm_issue.update(cpm_issue_params)
        format.html { redirect_to @cpm_issue, notice: 'Cpm issue was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_issue }
      else
        format.html { render :edit }
        format.json { render json: @cpm_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_issues/1
  # DELETE /cpm_issues/1.json
  def destroy
    @cpm_issue.destroy
    respond_to do |format|
      format.html { redirect_to cpm_issues_url, notice: 'Cpm issue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_issue
      @cpm_issue = CpmIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_issue_params
      params.require(:cpm_issue).permit(:cpm_user_id, :cpm_project_id, :man_hour, :name, :assigned_to, :cpm_type, :cpm_status, :cpm_process_id, :cpm_priority_id, :deadline, :description)
    end
end
