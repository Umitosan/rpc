require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock paper scissors path', {:type => :feature}) do
  it('') do
    visit('')
    fill_in('', :with => '')
    click_button('')
    expect(page).to have_content('')
  end
end
