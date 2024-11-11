class QuestionsController < ApplicationController

  def ask; end

  def answer
    @user_question = params[:user_question]
    if @user_question == 'I am going to work'
      @answer_coach = 'Great!'
    elsif @user_question.include?('?')
      @answer_coach = "Silly question, get dressed and go to work!"
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
