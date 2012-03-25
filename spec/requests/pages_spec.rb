require 'spec_helper'

describe "Pages" do

    subject { page }

	describe "Home Page" do
        before { visit root_path }
        title = "Home"

		it { should have_selector('title', text: full_title('')) }
		it { should have_selector('h1', text: full_title('')) }
        it { should_not have_selector('title', text: title) }
	end

	describe "Help Page" do
        before { visit help_path }
        title = "Help"

		it { should have_selector('title', text: full_title(title)) }
		it { should have_selector('h1', text: title) }
	end

	describe "About Page" do
        before { visit about_path }
        title = "About"

		it { should have_selector('title', text: full_title(title)) }
		it { should have_selector('h1', text: title) }
	end

	describe "Contact Page" do
        before { visit contact_path }
        title = "Contact"

		it { should have_selector('title', text: full_title(title)) }
		it { should have_selector('h1', text: title) }
	end
end
