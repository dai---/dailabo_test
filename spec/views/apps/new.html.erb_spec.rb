require 'rails_helper'

RSpec.describe "apps/new", type: :view do
  before(:each) do
    assign(:app, App.new(
      :name => "MyString",
      :store_id => "MyString",
      :banner_url => "MyString"
    ))
  end

  it "renders new app form" do
    render

    assert_select "form[action=?][method=?]", apps_path, "post" do

      assert_select "input#app_name[name=?]", "app[name]"

      assert_select "input#app_store_id[name=?]", "app[store_id]"

      assert_select "input#app_banner_url[name=?]", "app[banner_url]"
    end
  end
end
