require 'spec_helper'

describe "Pages" do

	describe "Home Page" do

		it "should have correct title" do
			visit '/page/home'
			page.should have_selector('title',
																:text => "Home |")
		end

		it "should have content 'Home' as h1" do
			visit '/page/home'
			page.should have_selector('h1',
																:text => "Home")
		end
	end

	describe "Help Page" do
		
		it "should have correct title" do
			visit '/page/help'
			page.should have_selector('title',
																 :text => "Help |")
		end

		it "should have content 'Help' as h1" do
			visit '/page/help'
			page.should have_selector('h1',
																:text => "Help")
		end
	end

	describe "About Page" do

		it "should have correct title" do
			visit '/page/about'
			page.should have_selector('title',
																:text => "About |")
		end

		it "should have content 'About' as h1" do
			visit '/page/about'
			page.should have_selector('h1',
																:text => "About")
		end
	end

	describe "Contact Page" do

		it "should have correct title" do
			visit '/page/contact'
			page.should have_selector('title',
																:text => "Contact |")
		end

		it "should have content 'Contact' as h1" do
			visit '/page/contact'
			page.should have_selector('h1',
																:text => "Contact")
		end
	end
end
