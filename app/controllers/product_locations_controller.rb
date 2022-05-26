class ProductLocationsController < ApplicationController
  before_action :set_product_location, only: %i[ show edit update destroy ]

  # GET /product_locations or /product_locations.json
  def index
    @product_locations = ProductLocation.all
  end

  # GET /product_locations/1 or /product_locations/1.json
  def show
  end

  # GET /product_locations/new
  def new
    @product_location = ProductLocation.new
  end

  # GET /product_locations/1/edit
  def edit
  end

  # POST /product_locations or /product_locations.json
  def create
    @product_location = ProductLocation.new(product_location_params)

    respond_to do |format|
      if @product_location.save
        format.html { redirect_to product_location_url(@product_location), notice: "Product location was successfully created." }
        format.json { render :show, status: :created, location: @product_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_locations/1 or /product_locations/1.json
  def update
    respond_to do |format|
      if @product_location.update(product_location_params)
        format.html { redirect_to product_location_url(@product_location), notice: "Product location was successfully updated." }
        format.json { render :show, status: :ok, location: @product_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_locations/1 or /product_locations/1.json
  def destroy
    @product_location.destroy

    respond_to do |format|
      format.html { redirect_to product_locations_url, notice: "Product location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_location
      @product_location = ProductLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_location_params
      params.require(:product_location).permit(:product_id, :warehouse_id, :quanity)
    end
end
