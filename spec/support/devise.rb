module DeviseSignInHelpers
  include Warden::Test::Helpers
  Warden.test_mode!
  def sign_in
    teacher = FactoryBot.create(:teacher)
    login_as(teacher)
  end
end
