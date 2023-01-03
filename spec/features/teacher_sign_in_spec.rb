require 'rails_helper'

RSpec.describe Teacher, type: :feature do
  def sign_in(teacher)
    fill_in 'teacher_email', with: teacher.email
    fill_in 'teacher_password', with: teacher.password
    click_on 'Log in'
  end

  describe 'signs in' do
    it 'successfully' do
      teacher = create(:teacher, attributes_for(:teacher))
      visit root_path
      click_link 'SignIn'
      sign_in(teacher)
      sleep(8)
      expect(page).to have_content 'Signed in successfully.'
    end

    describe 'teacher is not signed_in' do
      it 'with wrong credentials' do
        visit root_path
        teacher = create(:teacher, attributes_for(:teacher))
        wrong_credentials = build(:teacher,
                                  attributes_for(:teacher, email: 'wrong_email@example.com',
                                                           password: 'wrong_password'))
        click_link 'SignIn'
        fill_in 'teacher_email', with: wrong_credentials.email
        fill_in 'teacher_password', with: wrong_credentials.password
        click_button 'Log in'
        expect(page).to have_content 'Invalid Email or password.'
      end
    end

    describe 'signs out' do
      it 'successfully' do
        teacher = create(:teacher, attributes_for(:teacher))
        visit root_path
        click_link 'SignIn'
        sign_in(teacher)
        expect(page).to have_content 'Signed in successfully.'
        click_link 'SignOut'
        expect(page).to have_content 'Signed out successfully'
      end
    end
  end
end
