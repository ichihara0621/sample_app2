require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  let(:base_title) { 'SampleApp2' }

  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
      assert_select "title", "#{base_title}"
    end
  end
end

#require 'rails_helper'
#
#describe 'home' do
#  specify '画面の表示' do
#    visit '/static_pages/home'
#    expect(page).to have_css('h1', text: 'Sample')
#  end
#end
#
#describe 'help' do
#  specify '画面の表示' do
#    visit '/static_pages/help'
#    expect(page).to have_css('h1', text: 'Help')
#  end
#end
#
#describe 'about' do
#  specify '画面の表示' do
#    visit '/static_pages/about'
#    expect(page).to have_css('h1', text: 'About')
#  end
#end