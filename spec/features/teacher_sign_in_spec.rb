require 'rails_helper'
describe 'teacher successfully' do
  include DeviseSignInHelpers
  feature 'signs in' do
    scenario 'successfully', js: true do
      visit root_path
      click_link 'SignIn'

      sign_in

      expect(page).to have_content 'Signed in successfully.'
    end
  end
end

# scenario 'signs out' do
#   teacher = @teacher
#   sign_in(teacher)
#   sign_out(teacher)
# end

# describe 'teacher is not logged in' do
#   scenario 'with wrong credentials' do
#     visit root_path
#     wrong_credentials = FactoryBot.build(:teacher,
#                                          attributes_for(:teacher, email: 'wrong_email@example.com',
#                                                                   password: 'wrong_password'))
#     click_link 'SignIn'
#     fill_in 'teacher_email', with: wrong_credentials.email
#     fill_in 'teacher_password', with: wrong_credentials.password
#     click_button 'Log in'
#     expect(page).to have_content 'Invalid Email or password.'
#   end
# end
