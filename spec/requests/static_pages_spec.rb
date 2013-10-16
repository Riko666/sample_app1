require 'spec_helper'

describe "StaticPages" do
	describe "Home page" do
		it "should have the content 'Sample App'" do
			visit '/static_pages/home'
			page.should have_content('Sample App')
		end

		it "should have the h1 'Sample App'" do
			visit root_path
			page.should have_selector('h1', text: 'Sample App')
		end

	end

	describe "Help page" do
		

		it "should have the h1 'Sample App'" do
			visit about_path
			page.should have_selector('h1', text: 'Help')
		end

	end

end
