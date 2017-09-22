class TestcategoriesController < ApplicationController
  before_action :set_testcategory, only: [:show, :edit, :update, :destroy]

  # GET /testcategories
  # GET /testcategories.json
  def index
    @testcategories = Testcategory.all
  end

  # GET /testcategories/1
  # GET /testcategories/1.json
  def show
  end

  # GET /testcategories/new
  def new
    @testcategory = Testcategory.new
  end

  # GET /testcategories/1/edit
  def edit
  end

  # POST /testcategories
  # POST /testcategories.json
  def create
    @testcategory = Testcategory.new(testcategory_params)
     
    respond_to do |format|
      if @testcategory.save
        format.html { redirect_to @testcategory, notice: 'Testcategory was successfully created.' }
        format.json { render :show, status: :created, location: @testcategory }
      else
        format.html { render :new }
        format.json { render json: @testcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testcategories/1
  # PATCH/PUT /testcategories/1.json
  def update
    respond_to do |format|
      if @testcategory.update(testcategory_params)
        format.html { redirect_to @testcategory, notice: 'Testcategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @testcategory }
      else
        format.html { render :edit }
        format.json { render json: @testcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testcategories/1
  # DELETE /testcategories/1.json
  def destroy
    @testcategory.destroy
    respond_to do |format|
      format.html { redirect_to testcategories_url, notice: 'Testcategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testcategory
      @testcategory = Testcategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testcategory_params
      params.require(:testcategory).permit(:testname, :test_id, tests_attributes: [:id, :test_name, :_destroy], questions_attributes: [:id, :question_name, :_destroy])
    end
end
