require 'spec_helper'

if ENV['IN_BROWSER']
  describe "Get Home Page", type: :feature ,focus:true do
    specify do
      visit '/'

      expect(page).to have_content('Home')
      expect(page).to have_content('Nav')
    end
  end

  describe "Renders List", type: :feature ,focus:true do
    specify do
      visit '/list'

      expect(page.status_code).to eq 200
      expect(page).to have_content('List')
    end
  end
end
