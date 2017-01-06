class TestTwosController < ApplicationController
  before_action :set_test_two, only: [:show, :edit, :update, :destroy]

  # GET /test_twos
  # GET /test_twos.json
  def index
    @test_twos = TestTwo.all
  end

  # GET /test_twos/1
  # GET /test_twos/1.json
  def show
  end

  # GET /test_twos/new
  def new
    @test_two = TestTwo.new
  end

  # GET /test_twos/1/edit
  def edit
  end

  # POST /test_twos
  # POST /test_twos.json
  def create
    @test_two = TestTwo.new(test_two_params)

    respond_to do |format|
      if @test_two.save
        format.html { redirect_to @test_two, notice: 'Test two was successfully created.' }
        format.json { render :show, status: :created, location: @test_two }
      else
        format.html { render :new }
        format.json { render json: @test_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_twos/1
  # PATCH/PUT /test_twos/1.json
  def update
    respond_to do |format|
      if @test_two.update(test_two_params)
        format.html { redirect_to @test_two, notice: 'Test two was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_two }
      else
        format.html { render :edit }
        format.json { render json: @test_two.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_twos/1
  # DELETE /test_twos/1.json
  def destroy
    @test_two.destroy
    respond_to do |format|
      format.html { redirect_to test_twos_url, notice: 'Test two was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_two
      @test_two = TestTwo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_two_params
      params.require(:test_two).permit(:title)
    end
end
