class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def show
    @quiz = Quiz.find_by(id: params[:id])
    unless @quiz
      redirect_to quizzes_path, alert: "クイズが見つかりません"
    end
  end

  def result
    @score = session[:score] || 0
    session[:score] = nil  # スコアをリセットする
  end

  def answer
    @quiz = Quiz.find_by(id: params[:id])
    unless @quiz
      redirect_to quizzes_path, alert: "クイズが見つかりません"
      return
    end

    session[:score] ||= 0

    if params[:choice] == @quiz.correct_answer
      session[:score] += 1
      flash[:notice] = "正解！"
    else
      flash[:alert] = "残念！"
    end
    flash[:explanation] = @quiz.explanation

    next_quiz = Quiz.where("id > ?", @quiz.id).order(:id).first
    if next_quiz
      flash[:next_quiz_path] = quiz_path(next_quiz)
      redirect_to quiz_path(@quiz)
    else
      redirect_to quiz_path(@quiz)
    end
  end
end
