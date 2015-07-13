require 'rails_helper'

RSpec.describe "apps/index", type: :view do
  before(:each) do
    assign(:apps, [
      App.create!(
        :name => "Name",
        :store_id => "Store",
        :banner_url => "Banner Url"
      ),
      App.create!(
        :name => "Name",
        :store_id => "Store",
        :banner_url => "Banner Url"
      )
    ])
  end

  it "renders a list of apps" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Store".to_s, :count => 2
    assert_select "tr>td", :text => "Banner Url".to_s, :count => 2
  end
end
