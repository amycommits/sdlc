require 'rails_helper'

RSpec.describe "test_case_step_results/show", type: :view do
  before(:each) do
    @test_case_step_result = assign(:test_case_step_result, TestCaseStepResult.create!(
      :test_case_step => nil,
      :state => "State",
      :details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/MyText/)
  end
end
