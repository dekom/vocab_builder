require 'spec_helper'

describe "Users" do
    subject { page }

    describe "signup page" do
        before { visit signup_path }
        title = 'Sign up'

        it { should have_selector('h1', text: title) }
        it { should have_selector('title', text: full_title(title)) }
    end
end
