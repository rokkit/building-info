require 'spec_helper'

describe "PageIndices" do
  let(:user) { create :user }
  describe "GET /page" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get pages_index_path
      response.status.should be(200)
    end
  end
  describe "login user" do
    context "when user login with valida cred" do
      before do
        visit pages_index_path
        fill_in "Имя пользователя", with: user.email
        fill_in "Пароль", with: user.password
        click_button "Войти"
      end
      subject { page }
      it { should have_content "Welcome" }
    end
  end
end
