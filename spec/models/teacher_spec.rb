require 'rails_helper'
RSpec.describe Teacher, type: :model do
  describe 'presence validations' do
    subject { build(:teacher) }

    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
  end

  describe 'email uniqueness' do
    subject { build(:teacher) }

    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end

describe 'password length validation' do
  let(:teacher) { Teacher.new(attributes_for(:teacher, password: 'pea')) }

  it 'fails' do
    expect(teacher).not_to be_valid
  end
end
