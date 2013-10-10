class PurchasesController < ApplicationController

  def show
    @purchase = Purchase.find(params[:id])
  end

  def create
    @purchase = Purchase.new(purchase_params)

    respond_to do |format|
      if @purchase.save
        format.html { redirect_to @purchase, notice: 'Thank you for your purchase!' }
        format.json { render action: 'show', status: :created, location: @purchase }
      else
        format.html { render action: 'new' }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def purchase_params
      params.require(:purchase).permit(:item_id)
    end
end
