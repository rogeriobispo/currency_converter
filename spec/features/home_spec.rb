require 'rails_helper'

RSpec.describe 'Exchange Currency Process', :type => :feature do
  it 'Exchange value' do
    visit root_path
    within('#exchange_form') do
      select('EUR', from: 'currency')
      select('USD', from: 'currency_destination')
      fill_in 'quantity', with: '0'
    end

    #save_and_open_page
    expect(page).to have_field("quantity", with: 0)
  end
end
