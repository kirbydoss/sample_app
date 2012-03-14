require 'spec_helper'

describe "Static pages" do
  let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
    
    it "should have the base title" do
      visit root_path
      page.should have_selector('title', :text=> "Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have the title 'Home'" do
      visit root_path
      page.should_not have_selector('title', :text=> "| Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
    
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title', :text=> "#{base_title} | Help")
    end
    
  end

  
  describe 'About page' do
    it "should have the content 'About us'" do
      visit about_path
      page.should have_content('About Us')
    end
    
    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title', :text=> "#{base_title} | About Us")
    end
    
  end

  describe 'Contact page' do
    it "should have the content 'Contact Us'" do
      visit contact_path
      page.should have_content('Contact Us')
    end
    
    it "should have the title 'Contact Us'" do
      visit contact_path
      page.should have_selector('title', :text=> "#{base_title} | Contact Us")
    end
    
  end

end