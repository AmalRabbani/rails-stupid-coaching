class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_choice = params[:questions]
    if @user_choice.include? "?"
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @user_choice == "I am going to work"
      @coach_answer = "Great!"
    else @user_choice
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
