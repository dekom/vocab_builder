require 'spec_helper'

describe "Pages" do

    describe "Components" do
        subject { page }

        shared_examples_for "all pages" do
            it { should have_selector('h1', text: heading) }
            it { should have_selector('title', text: full_title(page_title)) }
        end

        describe "Home Page" do
            before { visit root_path }
            let (:heading) {'Vocabulary Builder'}
            let (:page_title) {''}

            it_should_behave_like "all pages"
            it { should_not have_selector 'title', text: 'Home |' }
        end

        describe "Help Page" do
            before { visit help_path }
            let (:heading) {'Help'}
            let (:page_title) {'Help'}

            it_should_behave_like "all pages"
        end

        describe "About Page" do
            before { visit about_path }
            let (:heading) {'About'}
            let (:page_title) {'About'}

            it_should_behave_like "all pages"
        end

        describe "Contact Page" do
            before { visit contact_path }
            let (:heading) {'Contact'}
            let (:page_title) {'Contact'}

            it_should_behave_like "all pages"
        end
    end
end
