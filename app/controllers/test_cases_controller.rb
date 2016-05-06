class TestCasesController < ApplicationController
  before_action :set_test_case, only: [:show, :edit, :update, :destroy]


  # GET /test_cases
  # GET /test_cases.json
  def index
    @test_cases = TestCase.all
  end

  # GET /test_cases/1
  # GET /test_cases/1.json
  def show
    @test_case = TestCase.test_case_child_includes.find(params[:id])
  end
  def overview_decorator
    step.test_case_step_results.last(2).first.decorate.overview
  end

  # GET /test_cases/new
  def new
    @test_case = TestCase.new
    #@test_case_steps = @test_case.test_case_steps.build
    3.times do
      test_case_step=@test_case.test_case_steps.build
    end
    
  end

  # GET /test_cases/1/edit
  def edit

  end

  # POST /test_cases
  # POST /test_cases.json
  def create
    #raise params.inspect
    @test_case = TestCase.new(test_case_params)
    #3.times do
      test_case_step=@test_case.test_case_steps.build
    #end

    respond_to do |format|
      if @test_case.save
        format.html { redirect_to @test_case, notice: 'Test case was successfully created.' }
        format.json { render :show, status: :created, location: @test_case }
      else
        format.html { render :new }
        format.json { render json: @test_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_cases/1
  # PATCH/PUT /test_cases/1.json
  def update
    respond_to do |format|
      if @test_case.update(test_case_params)
        format.html { redirect_to @test_case, notice: 'Test case was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_case }
      else
        format.html { render :edit }
        format.json { render json: @test_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_cases/1
  # DELETE /test_cases/1.json
  def destroy
    @test_case=TestCase.find(params[:id])
    #@test_case_step = TestCaseStep.find_by(test_case_id: @test_case_id.id)
    #@test_case_step_result = TestCaseStepResult.find_by(test_case_step_id: @test_case_step.id)
    #@test_case_step = TestCaseStep.find_by(test_case_id: @test_case_id)
    
    @test_case.destroy
    respond_to do |format|
      format.html { redirect_to test_cases_url, notice: 'Test case was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_case
      @test_case = TestCase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_case_params
      params.require(:test_case).permit(:name, :requirement_ids=>[],test_case_steps_attributes: [:id,:description, :expected_result,:_destroy])
    end

end