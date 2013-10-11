require 'spec_helper'


describe PurchasesController do
  let(:item) { Item.create!(stock: 1) }
  let(:valid_attributes) { {item_id: item.id} }

  describe "GET show" do
    it "assigns the requested purchase as @purchase" do
      purchase = Purchase.create! valid_attributes
      get :show, {id: purchase.to_param}
      expect(assigns(:purchase)).to eq(purchase)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Purchase" do
        expect {
          post :create, {purchase: valid_attributes}
        }.to change(Purchase, :count).by(1)
      end

      it "reduces the item's stock by 1" do
        post :create, {purchase: valid_attributes}
        item.reload
        expect(item.stock).to eq 0
      end

      it "assigns a newly created purchase as @purchase" do
        post :create, {purchase: valid_attributes}
        expect(assigns(:purchase)).to be_a(Purchase)
        expect(assigns(:purchase)).to be_persisted
      end

      it "redirects to the created purchase" do
        post :create, {purchase: valid_attributes}
        expect(response).to redirect_to(Purchase.last)
      end
    end
  end

end
