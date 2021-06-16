require 'rails_helper'
describe 'sign out process', type: :feature do
  before :each do
    User.create(email: 'p@gmail.com', password: '123456')
  end
  it 'logs user out' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'p@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    click_link 'SIGN OUT'
    expect(current_path).to eql(root_path)
    expect(page).to have_text('Signed out successfully.')
  end
end
