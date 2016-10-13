class DivesController < ApplicationController
  before_action :set_dife, only: [:show, :edit, :update, :destroy]

  # GET /dives
  # GET /dives.json
  def index
    @dives = Dife.all
  end

  # GET /dives/1
  # GET /dives/1.json
  def show
  end

  # GET /dives/new
  def new
    @dife = Dife.new
  end

  # GET /dives/1/edit
  def edit
  end

  # POST /dives
  # POST /dives.json
  def create
    @dife = Dife.new(dife_params)

    respond_to do |format|
      if @dife.save
        format.html { redirect_to @dife, notice: 'Dife was successfully created.' }
        format.json { render :show, status: :created, location: @dife }
      else
        format.html { render :new }
        format.json { render json: @dife.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dives/1
  # PATCH/PUT /dives/1.json
  def update
    respond_to do |format|
      if @dife.update(dife_params)
        format.html { redirect_to @dife, notice: 'Dife was successfully updated.' }
        format.json { render :show, status: :ok, location: @dife }
      else
        format.html { render :edit }
        format.json { render json: @dife.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dives/1
  # DELETE /dives/1.json
  def destroy
    @dife.destroy
    respond_to do |format|
      format.html { redirect_to dives_url, notice: 'Dife was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dife
      @dife = Dife.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dife_params
      params.require(:dife).permit(:date, :time, :duration, :depth, :dive_type, :dive_buddy, :location, :rating, :image_URL)
    end
end
