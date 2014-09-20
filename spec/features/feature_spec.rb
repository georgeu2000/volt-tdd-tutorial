require 'spec_helper'

if ENV['IN_BROWSER']
  describe "Get Home Page", :type => :feature do
    it "should load the page" do
      visit '/'

      # save_and_open_page

      expect(page).to have_content('Home')
    end
  end
end
