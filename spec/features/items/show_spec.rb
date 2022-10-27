RSpec.describe 'merchant index' do
  describe 'as a visitor, when i visit a merchant show page' do
    it 'displays attributes about the item' do
      visit item_path(1)
      expect(page).to have_content("some item name")
      expect(page).to have_content("some item name1")
      expect(page).to have_content("some item name2")
    end
  end
end