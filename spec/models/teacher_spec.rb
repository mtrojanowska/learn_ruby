require 'pry'
require 'rails_helper'
RSpec.describe Teacher, type: :model do
  describe 'happy path' do
    it 'returnes valid object' do
      teacher = build(:teacher, attributes_for(:teacher))
      expect(teacher).to be_valid
    end
  end

  describe 'validation success' do
    let(:teacher) { Teacher.new(attributes_for(:teacher)) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:password_confirmation) }
  end

  describe 'email validation fail' do
    it 'for unique email' do
      teacher_1 = build(:teacher, attributes_for(:teacher, email: 'paleass'))
      teacher_2 = Teacher.new(attributes_for(:teacher, email: 'paleass'))
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
