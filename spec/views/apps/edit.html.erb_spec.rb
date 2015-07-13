require 'rails_helper'

RSpec.describe "apps/edit", type: :view do
  before(:each) do
    @app = assign(:app, App.create!(
      :name => "MyString",
      :store_id => "MyString",
      :banner_url => "MyString"
    ))
  end

  it "renders the edit app form" do
    render

    assert_select "form[action=?][method=?]", app_path(@app), "post" do

      assert_select "input#app_name[name=?]", "app[name]"

      assert_select "input#app_store_id[name=?]", "app[store_id]"

      assert_select "input#app_banner_url[name=?]", "app[banner_url]"
    end
  end
end
