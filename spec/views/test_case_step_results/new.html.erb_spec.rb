require 'rails_helper'

RSpec.describe "test_case_step_results/new", type: :view do
  before(:each) do
    assign(:test_case_step_result, TestCaseStepResult.new(
      :test_case_step => nil,
      :state => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new test_case_step_result form" do
    render

    assert_select "form[action=?][method=?]", test_case_step_results_path, "post" do

      assert_select "input#test_case_step_result_test_case_step_id[name=?]", "test_case_step_result[test_case_step_id]"

      assert_select "input#test_case_step_result_state[name=?]", "test_case_step_result[state]"

      assert_select "textarea#test_case_step_result_details[name=?]", "test_case_step_result[details]"
    end
  end
end
