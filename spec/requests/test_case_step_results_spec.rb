require 'rails_helper'

RSpec.describe "TestCaseStepResults", type: :request do
  describe "GET /test_case_step_results" do
    it "works! (now write some real specs)" do
      get test_case_step_results_path
      expect(response).to have_http_status(200)
    end
  end
end
