class SwappersController < ApplicationController
  before_action :set_swapper, only: %i[ show edit update destroy ]

  # GET /swappers or /swappers.json
  def index
    @swappers = Swapper.all
  end

  # GET /swappers/1 or /swappers/1.json
  def show
  end

  # GET /swappers/new
  def new
    @swapper = Swapper.new
  end

  # GET /swappers/1/edit
  def edit
  end

  # POST /swappers or /swappers.json
  def create
    @swapper = Swapper.new(swapper_params)

    respond_to do |format|
      if @swapper.save
        format.html { redirect_to swapper_url(@swapper), notice: "Swapper was successfully created." }
        format.json { render :show, status: :created, location: @swapper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @swapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /swappers/1 or /swappers/1.json
  def update
    respond_to do |format|
      if @swapper.update(swapper_params)
        format.html { redirect_to swapper_url(@swapper), notice: "Swapper was successfully updated." }
        format.json { render :show, status: :ok, location: @swapper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @swapper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swappers/1 or /swappers/1.json
  def destroy
    @swapper.destroy!

    respond_to do |format|
      format.html { redirect_to swappers_url, notice: "Swapper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_swapper
      @swapper = Swapper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def swapper_params
      params.require(:swapper).permit(:name, :experience, :admin_id)
    end
end
