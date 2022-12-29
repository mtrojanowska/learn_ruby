require 'rails_helper'
require 'irb'
describe 'teacher signs_up' do
  feature 'successfully' do
    scenario 'with right credentials' do
      # Capybara.current_driver = :selenium_chrome
      visit root_path
      click_link 'SignUp'
      visit new_teacher_registration_path
      fill_in 'teacher_first_name', with: 'First'
      fill_in 'teacher_last_name', with: 'Last'
      fill_in 'teacher_email', with: 'email@example.com'
      fill_in 'teacher_password', with: 'password'
      fill_in 'teacher_password_confirmation', with: 'password'
      expect { find_button(value: 'Sign up').click }.to change(Teacher, :count).by(1)
      expect(page).to have_content 'Instead of devise message'
    end
  end
  feature 'unsuccessfully', js: true do
    scenario 'with password too weak' do
      visit root_path
      click_link 'SignUp'
      visit new_teacher_registration_path
      fill_in 'teacher_first_name', with: 'First'
      fill_in 'teacher_last_name', with: 'Last'
      fill_in 'teacher_email', with: 'email@example.com'
      fill_in 'teacher_password', with: 'pass'
      fill_in 'teacher_password_confirmation', with: 'pass'
      click_button 'Sign up'
      expect(page).to have_current_path '/teachers'
      expect(page).to have_content 'Password is too short (minimum is 6 characters)'
    end
  end
end
