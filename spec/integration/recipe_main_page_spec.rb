RSpec.describe "Page with recipe details", type: :feature, js: true do
  context "recipe page" do
    before(:each) do
      visit root_path
      first(:link, "View").click
    end

    it "displays title of the recipe" do
      expect(page).to have_css(".recipe-title")
    end

    it "displays image of the recipe" do
      expect(page).to have_css(".image")
    end

    it "displays description of the recipe" do
      expect(page).to have_css(".recipe-description")
    end
  end
end
