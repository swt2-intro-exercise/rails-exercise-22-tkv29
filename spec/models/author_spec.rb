require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have a name and homepage" do
    first = 'Alan'
    last = 'Turing'
    homepage = 'http://wikipedia.org/Alan_Turing'
    author = Author.new(first_name: first, last_name: last, homepage: homepage)
    expect(author.first_name).to eq(first)
    expect(author.last_name).to eq(last)
    expect(author.homepage).to eq(homepage)
  end
end

