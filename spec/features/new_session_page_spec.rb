require './rails_helper'

describe "The sign in process" do
  it "creates a new session for the user" do
    visit root_path
    click_on 'Sign up'
    fill_in 'user_email' :with => "test@test.com"
    fill_in 'user_password' :with => 'testing'
    fill_in 'user_password_confirmation' :with => "testing"
    click_on 'Create Account'
    visit new_user_session_path
    fill_in 'user[email]', :with => 'test@test.com'
    fill_in 'user[password]', :with => 'testing'
    click_on 'Log in'
    expect(page).to have_content ('test@test.com')
    expect(page).to have_content ('Sign out')
  end
end