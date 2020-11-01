RSpec.describe Recipe do
  context ".get_one" do
    let(:recipe) { Recipe.get_one("5jy9hcMeEgQ4maKGqIOYW6") }
  
    it "should return recipe title" do
      expect(recipe[:title]).to eq("Tofu Saag Paneer with Buttery Toasted Pita")
    end
  
    it "should return recipe description" do
      expect(recipe[:description]).to eq("Saag paneer is a popular Indian dish with iron-rich spinach and cubes of paneer, an Indian cheese that is firm enough to retain it's shape, but silky-soft on the inside. We have reimagined Saag Paneer and replaced the \"paneer\" with crispy cubes of firm tofu, making this already delicious and nutritious vegetarian dish burst with protein. Toasted pita bread is served alongside as an ode to naan. Cook, relax, and enjoy! [VIDEO](https://www.youtube.com/watch?v=RMzWWwfWdVs)")
    end
  
    it "should return recipe photo" do
      expect(recipe[:photo].url).to eq("//images.ctfassets.net/kk2bw5ojx476/48S44TRZN626y4Wy4CuOmA/9c0a510bc3d18dda9318c6bf49fac327/SKU1498_Hero_154__2_-adb6124909b48c69f869afecb78b6808-2.jpg")
    end    
  end

  context ".get_list" do
    let(:recipe) { Recipe.get_list }
    
    it "should return recipe array" do
      expect(recipe.array?).to be true
    end
  end
end
