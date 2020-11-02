RSpec.describe RecipesController do
  describe "GET #index", :vcr do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
      expect(response).to have_http_status(:ok)
    end
  end
end