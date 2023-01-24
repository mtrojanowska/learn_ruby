require 'pry'
require 'rails_helper'
RSpec.describe Teacher, type: :model do
  describe 'happy path' do
    it 'returnes valid object' do
      teacher = build(:teacher, attributes_for(:teacher))
      expect(teacher).to be_valid
    end
  end

  describe 'validation' do
    let(:teacher) { Teacher.new(attributes_for(:teacher)) }

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe 'email uniqeness' do
    let(:teacher) { Teacher.new(attributes_for(:teacher)) }
    let(:teacher_email_dup) { Teacher.new(attributes_for(:teacher, email: teacher.email)) }

    it { is_expected.not_to validate_uniqueness_of(:email) }
  end

  describe 'password validation' do
    let(:teacher) { Teacher.new(attributes_for(:teacher, password: 'pea')) }

    it 'fails for less than 6 characters' do
      expect(teacher).not_to be_valid
    end
  end
end
