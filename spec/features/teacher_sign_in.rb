require 'rails_helper'

RSpec.describe 'teacher signs_up', type: :feature do
describe "the signin process", type: :feature do
    before :each do
      User.create(email: 'user@example.com', password: 'password')
    end
  
    it "signs me in" do

visit 'root_path'
