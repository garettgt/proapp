require 'spec_helper'

describe "Static pages" do

    describe "Home page" do
        it "should have the content 'Pro App'" do
            visit '/static_pages/home'
            expect(page).to have_content('Pro App')
        end
        it "title 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_title("Ruby On Rails | Home")
        end
    end

    describe "Help page" do
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end
        it "title 'Help" do
            visit '/static_pages/help'
            expect(page).to have_title("Ruby On Rails | Help")
        end
    end

    describe "About page" do
        it "should have the content 'About us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About us')
        end
        it "title 'About'"do
            visit '/static_pages/about'
            expect(page).to have_title("Ruby On Rails | About us")
        end
    end

end
