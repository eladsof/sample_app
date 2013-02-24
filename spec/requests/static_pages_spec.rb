require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Home'" do
	visit '/static_pages/home'
	page.should have_selector('h1',:text => 'Home')
    end

     it "should have the right title" do
       visit '/static_pages/home'
       page.should have_selector('title',:text => "What is my Agile ?")
     end

     it "should not have a prefix title" do
       visit '/static_pages/home'
       page.should_not have_selector('title',:text => "|")
     end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1',:text => 'Help')
    end

    it "should have the right title" do
       visit '/static_pages/help'
       page.should have_selector('title',:text => "| Help")
    end

  end

  describe "About page" do
    it "should have the content 'About us'" do
      visit '/static_pages/about'
      page.should have_selector('h1',:text => 'About')
    end

    it "should have the right title" do
       visit '/static_pages/about'
       page.should have_selector('title',:text => "| About")
    end

  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
	visit '/static_pages/contact'
	page.should have_selector('h1',:text => 'Contact')
    end

     it "should have the right title" do
       visit '/static_pages/contact'
       page.should have_selector('title',:text => "| Contact")
     end
  end

 end
