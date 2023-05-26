class SponsorLevelsController < ApplicationController
  before_action :set_sponsor_level, only: %i[ show edit update destroy ]

  # GET /sponsor_levels or /sponsor_levels.json
  def index
    @sponsor_levels = SponsorLevel.all
  end

  # GET /sponsor_levels/1 or /sponsor_levels/1.json
  def show
  end

  # GET /sponsor_levels/new
  def new
    @sponsor_level = SponsorLevel.new
  end

  # GET /sponsor_levels/1/edit
  def edit
  end

  # POST /sponsor_levels or /sponsor_levels.json
  def create
    @sponsor_level = SponsorLevel.new(sponsor_level_params)

    respond_to do |format|
      if @sponsor_level.save
        format.html { redirect_to sponsor_level_url(@sponsor_level), notice: "Sponsor level was successfully created." }
        format.json { render :show, status: :created, location: @sponsor_level }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sponsor_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsor_levels/1 or /sponsor_levels/1.json
  def update
    respond_to do |format|
      if @sponsor_level.update(sponsor_level_params)
        format.html { redirect_to sponsor_level_url(@sponsor_level), notice: "Sponsor level was successfully updated." }
        format.json { render :show, status: :ok, location: @sponsor_level }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sponsor_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsor_levels/1 or /sponsor_levels/1.json
  def destroy
    @sponsor_level.destroy

    respond_to do |format|
      format.html { redirect_to sponsor_levels_url, notice: "Sponsor level was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor_level
      @sponsor_level = SponsorLevel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sponsor_level_params
      params.require(:sponsor_level).permit(:Level_ID, :Level_Name, :Value, :Description)
    end
end
