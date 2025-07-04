class QuizzesController < ApplicationController
  def index
    # クイズの一覧を取得してビューに渡す例
    @quizzes = Quiz.all
  end

  def show
    # params[:id]で指定されたクイズ1件を取得してビューに渡す例
    @quiz = Quiz.find(params[:id])
  end

  def answer
    @quiz = Quiz.find(params[:id])
    if params[:choice] == @quiz.answer
      flash[:notice] = "正解！"
    else
      flash[:alert] = "残念！"
    end
    redirect_to quiz_path(@quiz)
  end
end
