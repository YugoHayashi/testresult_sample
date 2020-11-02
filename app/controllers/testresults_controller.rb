class TestresultsController < ApplicationController

  def index
    @tests = Testresult.all
  end

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
      redirect_to testresults_url
    else
      render 'new'
    end
  end

  def edit
    @test = Testresult.find(params[:id])
  end

  def update
    @test = Testresult.find(params[:id])
    if @test.update_attributes(testresult_params)
      flash[:success] = "登録が完了しました。"
      redirect_to testresults_url
    else
      render 'edit'
    end
  end

  def destroy
    Testresult.find(params[:id]).destroy
    flash[:success] = "削除完了"
    redirect_to testresults_url
  end

  private

    def testresult_params
      params.require(:testresult).permit(:name1, :jap_result, :math_result, :eng_result, :soci_result, :sci_result)
    end

end
