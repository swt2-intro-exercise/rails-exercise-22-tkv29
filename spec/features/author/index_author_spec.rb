require 'rails_helper'

describe "Index author page", type: :feature do
    
      it "should render withour error" do
     visit authors_path
      end
    
      it "should have a table with a row for each author" do
     visit authors_path
     expect(page).to have_css('table tr', count: Author.count+1)
      end
    
      it "should have a link to the new author page" do
     visit authors_path
     expect(page).to have_link('New', href: new_author_path)
      end
    
    end
