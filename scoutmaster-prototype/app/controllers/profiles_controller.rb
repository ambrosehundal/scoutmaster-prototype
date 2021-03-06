class ProfilesController < ApplicationController
    #before anyone tries to access their profile, authenticate the user
    before_action :authenticate_user!

  # before_action :set_awards_and_honor, only: [:show, :edit, :update, :destroy]

   
    def index
      @user = User.find(params[:user_id])
      @profile = @user.profile
      @awards = @profile.awards_and_honors.all
    end
  
    # GET /awards_and_honors/1
    # GET /awards_and_honors/1.json
    def show
      @user = User.find(params[:user_id])
      @profile = @user.profile
      @awards = @profile.awards_and_honors.all
    end
  
    # GET /awards_and_honors/new
    def new
     @user = User.find(params[:user_id])
    #  @user = current_user
    #  @profile = current_user.build_profile
     @profile = Profile.new
    end
  
    # GET /awards_and_honors/1/edit
    def edit
    end
  
    # POST /awards_and_honors
    # POST /awards_and_honors.json
    def create
      @user = User.find(params[:user_id])
      @profile = @user.create_profile(profile_params)
      # figure out how to send json to other pages and sites
    #  json_response(@profile)
      redirect_to :action => 'show' 
    end
  
    # PATCH/PUT /awards_and_honors/1
    # PATCH/PUT /awards_and_honors/1.json
    
  
    # DELETE /awards_and_honors/1
    # DELETE /awards_and_honors/1.json
    def destroy
      @profile.destroy
      respond_to do |format|
        format.html { redirect_to profile_url, notice: 'Profile was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
    #  def set_awards_and_honor
     #   @awards_and_honor = AwardsAndHonor.find(params[:id])
    #  end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def profile_params
        params.require(:profile).permit(:first_name, :last_name,  :headline, :summary, :age)
      end

  
end
