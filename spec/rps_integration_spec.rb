require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the rock paper scissors path', {:type => :feature}) do
  it('compares the users choices to see if player1 wins') do
    visit('/game')
    fill_in('play1', :with => 'rock')
    fill_in('play2', :with => 'scissors')
    click_button('Who_Wins?')
    expect(page).to have_content('Player 1 wins!')
  end
end
