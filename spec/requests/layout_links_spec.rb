require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at 'pages/'" do
    get 'pages/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Contact page at 'pages/contact'" do
    get 'pages/contact'
    response.should have_selector('title', :content => "Contact")
  end

  it "should have an About page at 'pages/about'" do
    get 'pages/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Help page at 'pages/help'" do
    get 'pages/help'
    response.should have_selector('title', :content => "Help")
  end
end