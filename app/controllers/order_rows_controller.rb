class OrderRowsController < ApplicationController
  before_action :set_order_row, only: %i[ show edit update destroy ]

  # GET /order_rows or /order_rows.json
  def index
    @order_rows = OrderRow.all
  end

  # GET /order_rows/1 or /order_rows/1.json
  def show
  end

  # GET /order_rows/new
  def new
    @order_row = OrderRow.new
  end

  # GET /order_rows/1/edit
  def edit
  end

  # POST /order_rows or /order_rows.json
  def create
    @order_row = OrderRow.new(order_row_params)

    respond_to do |format|
      if @order_row.save
        format.html { redirect_to order_row_url(@order_row), notice: "Order row was successfully created." }
        format.json { render :show, status: :created, location: @order_row }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_rows/1 or /order_rows/1.json
  def update
    respond_to do |format|
      if @order_row.update(order_row_params)
        format.html { redirect_to order_row_url(@order_row), notice: "Order row was successfully updated." }
        format.json { render :show, status: :ok, location: @order_row }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_row.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_rows/1 or /order_rows/1.json
  def destroy
    @order_row.destroy

    respond_to do |format|
      format.html { redirect_to order_rows_url, notice: "Order row was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_row
      @order_row = OrderRow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_row_params
      params.require(:order_row).permit(:order_id, :product_id, :quantity)
    end
end
