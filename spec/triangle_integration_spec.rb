require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:shpw_exceptions, false)

describe('triangle path', {:type => :feature}) do
  it('determines status and type of triangle') do
    visit('/')
    fill_in "s1", :with => "2"
    fill_in "s2", :with => "2"
    fill_in "s3", :with => "2"
    click_button('Submit')
    expect(page).to have_content("equilateral")
  end
end
