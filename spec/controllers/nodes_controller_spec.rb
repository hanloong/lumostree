require 'rails_helper'

RSpec.describe NodesController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      expect do
        post :create, params: { node: { value: 'test' } }
        expect(response).to redirect_to(root_path)
      end.to change{ Node.count }.by(1)
    end
  end

  describe "PATCH #update" do
    it "returns http success" do
      node = create(:node)
      patch :update, params: { id: node.id, node: { value: "new value" } }
      expect(response).to redirect_to(root_path)
      expect(node.reload.value).to eq "new value"
    end
  end

  describe "DELETE #destroy" do
    it "returns http success" do
      node = create(:node)
      expect do
        delete :destroy, params: { id: node.id }
      end.to change{ Node.count }.by(-1)
      expect(response).to redirect_to(root_path)
    end
  end
end
