require 'spec_helper'

describe "Authentication" do

  subject { page }

  describe "signin page" do
    before { visit signin_path }

    it { should have_text_header('Sign in') }
    it { should have_title('Sign in')}

    describe "With invalid information" do
      before {click_button "Sign in"}

      it { should have_title('Sign in')}
      it { should have_error_message}

      describe "after visiting another page" do
	before { click_link "Home" }
	it { should_not have_error_message("Invalid")}
      end
    end

    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before { valid_signin(user) }

      it { should have_title(user.name) }
      it { should have_profile_link(user_path(user)) }
      it { should_not have_signin_link(signin_path) }

      describe "after saving the user" do
        it { should have_link('Sign out') }
      end

      describe "followed by signout" do
        before { click_link "Sign out" }
        it { should have_link('Sign in') }
      end

    end
  end
end
