class TestresultsController < ApplicationController

  def show
    @test = Testresult.find(params[:id])
  end

  def new
    @test = Testresult.new
  end

  def create
    @test = Testresult.new(testresult_params)
    if @test.save
      flash[:success] = "登録が完了しました。"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def testresult_params
      params.require(:testresult).permit(:name1, :jap_result, :math_result, :eng_result, :soci_result, :sci_result)
    end

end
