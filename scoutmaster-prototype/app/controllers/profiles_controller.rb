class ProfilesController < ApplicationController
    #before anyone tries to access their profile, authenticate the user
    before_action :authenticate_user!

  # before_action :set_awards_and_honor, only: [:show, :edit, :update, :destroy]

   
    def index
      @user = User.find(params[:user_id])
      @profile = @user.profiles.all
    end
  
    # GET /awards_and_honors/1
    # GET /awards_and_honors/1.json
    def show
    end
  
    # GET /awards_and_honors/new
    def new
      @user = User.find(params[:user_id])
      @profile = @user.profiles.new
    end
  
    # GET /awards_and_honors/1/edit
    def edit
    end
  
    # POST /awards_and_honors
    # POST /awards_and_honors.json
    def create
      @awards_and_honor = AwardsAndHonor.new(awards_and_honor_params)
  
      respond_to do |format|
        if @awards_and_honor.save
          format.html { redirect_to @awards_and_honor, notice: 'Awards and honor was successfully created.' }
          format.json { render :show, status: :created, location: @awards_and_honor }
        else
          format.html { render :new }
          format.json { render json: @awards_and_honor.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /awards_and_honors/1
    # PATCH/PUT /awards_and_honors/1.json
    def update
      respond_to do |format|
        if @awards_and_honor.update(awards_and_honor_params)
          format.html { redirect_to @awards_and_honor, notice: 'Awards and honor was successfully updated.' }
          format.json { render :show, status: :ok, location: @awards_and_honor }
        else
          format.html { render :edit }
          format.json { render json: @awards_and_honor.errors, status: :unprocessable_entity }
        end
      end
    end
  
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
  
end
