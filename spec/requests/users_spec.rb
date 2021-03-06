require 'spec_helper'

describe "Users" do
  let(:base_title) { "Rails 4" }

  describe "GET /users" do

    it "users works!" do
      get users_path
      response.status.should be(200)
    end

    it "must be content 'Список пользователей'" do
      visit users_path
      expect(page).to have_content('Список пользователей')
    end
  end

  it "should have the right title" do
    visit users_path
    expect(page).to have_title("#{base_title}")
  end

end
