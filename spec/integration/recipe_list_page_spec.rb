RSpec.describe 'Main page with all recipies', type: :feature, js: true do
  context 'home page', :vcr do
    before(:each) do
      visit root_path
    end

    it 'displays name of the app' do
      expect(page).to have_content('Recipe App')
    end

    it 'have link for open recipe' do
      expect(page).to have_content('View')
    end
  end
end
