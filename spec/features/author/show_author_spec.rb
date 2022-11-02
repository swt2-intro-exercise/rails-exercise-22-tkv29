require 'rails_helper'

describe "Show author page", type: :feature do

  it "should have text for an author's first name, last name, and homepage" do
    alan=FactoryBot.create :author
    visit author_path(alan)
  end

end
