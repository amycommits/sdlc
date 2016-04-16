require 'rails_helper'

RSpec.describe "test_case_step_results/edit", type: :view do
  before(:each) do
    @test_case_step_result = assign(:test_case_step_result, TestCaseStepResult.create!(
      :test_case_step => nil,
      :state => "MyString",
      :details => "MyText"
    ))
  end

  it "renders the edit test_case_step_result form" do
    render

    assert_select "form[action=?][method=?]", test_case_step_result_path(@test_case_step_result), "post" do

      assert_select "input#test_case_step_result_test_case_step_id[name=?]", "test_case_step_result[test_case_step_id]"

      assert_select "input#test_case_step_result_state[name=?]", "test_case_step_result[state]"

      assert_select "textarea#test_case_step_result_details[name=?]", "test_case_step_result[details]"
    end
  end
end
