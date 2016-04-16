require 'rails_helper'

RSpec.describe "test_case_step_results/index", type: :view do
  before(:each) do
    assign(:test_case_step_results, [
      TestCaseStepResult.create!(
        :test_case_step => nil,
        :state => "State",
        :details => "MyText"
      ),
      TestCaseStepResult.create!(
        :test_case_step => nil,
        :state => "State",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of test_case_step_results" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
