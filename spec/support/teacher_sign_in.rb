module TeacherSignIn
  def sign_in(teacher)
    visit root_path
    click_link 'SignIn'
    fill_in 'teacher_email', with: teacher.email
    fill_in 'teacher_password', with: teacher.password
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
