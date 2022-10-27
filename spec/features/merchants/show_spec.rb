require 'rails_helper'

RSpec.describe 'merchant index' do
  describe 'as a visitor, when i visit a merchant show page' do
    it 'displays the items that that belong to that merchant' do
      visit merchant_path(1)
      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("Item Expedita Aliquam")
      expect(page).to have_content("Item Quo Magnam")
    end

    it 'has links to the items show page' do

      visit merchant_path(1)
      click_link "Item Nemo Facere"

      expect(page).to have_content("ITEM STUFF")
    end
  end
end