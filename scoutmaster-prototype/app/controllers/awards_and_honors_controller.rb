class AwardsAndHonorsController < ApplicationController
  before_action :set_awards_and_honor, only: [:show, :edit, :update, :destroy]

  # GET /awards_and_honors
  # GET /awards_and_honors.json
  def index
    @awards_and_honors = AwardsAndHonor.all
  end

  # GET /awards_and_honors/1
  # GET /awards_and_honors/1.json
  def show
    @profile = Profile.find(params[:profile_id])
  end

  # GET /awards_and_honors/new
  def new
    @profile = Profile.find(params[:profile_id])

    @awards_and_honor = @profile.awards_and_honors.new
  end

  # GET /awards_and_honors/1/edit
  def edit
  end

  # POST /awards_and_honors
  # POST /awards_and_honors.json
  def create
    @profile = Profile.find(params[:profile_id])

    @awards_and_honor = @profile.awards_and_honors.new(awards_and_honor_params)
    @awards_and_honor.save
    redirect_to :action => 'index' 
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
    @awards_and_honor.destroy
    respond_to do |format|
      format.html { redirect_to awards_and_honors_url, notice: 'Awards and honor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_awards_and_honor
      @awards_and_honor = AwardsAndHonor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def awards_and_honor_params
      params.require(:awards_and_honor).permit(:award_name, :description, :year, :organization)
    end
end
