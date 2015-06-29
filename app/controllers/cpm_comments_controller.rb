class CpmCommentsController < ApplicationController
  before_action :set_cpm_comment, only: [:show, :edit, :update, :destroy]

  # GET /cpm_comments
  # GET /cpm_comments.json
  def index
    @cpm_comments = CpmComment.all
  end

  # GET /cpm_comments/1
  # GET /cpm_comments/1.json
  def show
  end

  # GET /cpm_comments/new
  def new
    @cpm_comment = CpmComment.new
  end

  # GET /cpm_comments/1/edit
  def edit
  end

  # POST /cpm_comments
  # POST /cpm_comments.json
  def create
    @cpm_comment = CpmComment.new(cpm_comment_params)

    respond_to do |format|
      if @cpm_comment.save
        format.html { redirect_to @cpm_comment, notice: 'Cpm comment was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_comment }
      else
        format.html { render :new }
        format.json { render json: @cpm_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_comments/1
  # PATCH/PUT /cpm_comments/1.json
  def update
    respond_to do |format|
      if @cpm_comment.update(cpm_comment_params)
        format.html { redirect_to @cpm_comment, notice: 'Cpm comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_comment }
      else
        format.html { render :edit }
        format.json { render json: @cpm_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_comments/1
  # DELETE /cpm_comments/1.json
  def destroy
    @cpm_comment.destroy
    respond_to do |format|
      format.html { redirect_to cpm_comments_url, notice: 'Cpm comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_comment
      @cpm_comment = CpmComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_comment_params
      params.require(:cpm_comment).permit(:cpm_user_id, :cpm_issue_id, :cpm_task_id, :cpm_project_id, :content, :attachments)
    end
end
