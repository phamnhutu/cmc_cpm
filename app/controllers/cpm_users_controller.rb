class CpmUsersController < ApplicationController
  before_action :set_cpm_user, only: [:show, :edit, :update, :destroy]

  # GET /cpm_users
  # GET /cpm_users.json
  def index
    @cpm_users = CpmUser.all
  end

  # GET /cpm_users/1
  # GET /cpm_users/1.json
  def show
  end

  # GET /cpm_users/new
  def new
    @cpm_user = CpmUser.new
  end

  # GET /cpm_users/1/edit
  def edit
  end

  # POST /cpm_users
  # POST /cpm_users.json
  def create
    @cpm_user = CpmUser.new(cpm_user_params)

    respond_to do |format|
      if @cpm_user.save
        format.html { redirect_to @cpm_user, notice: 'Cpm user was successfully created.' }
        format.json { render :show, status: :created, location: @cpm_user }
      else
        format.html { render :new }
        format.json { render json: @cpm_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpm_users/1
  # PATCH/PUT /cpm_users/1.json
  def update
    respond_to do |format|
      if @cpm_user.update(cpm_user_params)
        format.html { redirect_to @cpm_user, notice: 'Cpm user was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpm_user }
      else
        format.html { render :edit }
        format.json { render json: @cpm_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpm_users/1
  # DELETE /cpm_users/1.json
  def destroy
    @cpm_user.destroy
    respond_to do |format|
      format.html { redirect_to cpm_users_url, notice: 'Cpm user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpm_user
      @cpm_user = CpmUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpm_user_params
      params.require(:cpm_user).permit(:first_name, :last_name, :permit, :username, :email, :pasword_digest, :remember_digest, :activation_digest, :gender, :phone_number, :address, :facebook_url, :your_story, :status, :cpm_team_id)
    end
end
