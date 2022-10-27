require 'rails_helper'

RSpec.describe 'merchant index' do
  describe 'as a visitor, when i visit /merchants' do
    it 'retrieves a list of merchants' do
      visit merchants_path
      expect(page).to have_content('Willms and Sons')
      expect(page).to have_content('Cummings-Thiel')
      expect(page).to have_content('Williamson Group')
    end

    it 'can direct to a merchant show page' do
      visit merchants_path
      click_link('Schroeder-Jerde')
      expect(current_path).to eq(merchant_path(1))
      expect(page).to have_content("Welcome to Schroeder-Jerde's Show Page")
    end
  end
end

#   User Story - Merchants
# As a visitor,
# When I visit '/merchants'
# I should see a list of merchants by name
# and when I click the merchant's name
# I should be on page '/merchants/:id'
# And I should see a list of items that merchant sells.


