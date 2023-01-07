require 'rails_helper'
RSpec.describe Teacher, type: :model do
  describe 'validations' do
    subject { build(:teacher) }

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe 'email validation fail' do
    it 'for unique email' do
      teacher_1 = create(:teacher, attributes_for(:teacher))
      teacher_2 = build(:teacher, attributes_for(:teacher, email: teacher_1.email))
      expect(teacher_2).not_to be_valid
    end
  end

  describe 'validation fail' do
    let(:teacher) { Teacher.new(attributes_for(:teacher, password: 'pea')) }

    it 'for password too short' do
      expect(teacher).not_to be_valid
    end
  end
end
