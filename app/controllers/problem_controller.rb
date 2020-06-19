class ProblemController < ApplicationController
  def new
     @problem = Problem.new
  end
  
  def create
    @problem = current_user.problem.new(problem_params)
    if @problem.save
      redirect_to problem_path, success: '登録に成功しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def problem_params
    params.require(:problem).permit(:troubl, :clarification, :premise, :evidence, :origin, :result, :viewpoint, :assumption, :user_id)
  end

end

#　タイトル　Troubl:悩み・問題
#　質問1　Clarification:明確化の質問
#　質問2　Premise:前提の質問
#　質問3　Evidence:証拠の質問
#　質問4　Origin:起源の質問
#　質問5　Result:結果の質問
#　質問6　Viewpoint:視点の質問
#　質問7　Assumption:仮定の質問