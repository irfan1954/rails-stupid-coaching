class QuestionsController < ApplicationController
  def home
  end

  def ask
    @questions = ["Hello There", "Can I go Shopping?", "I am going to work"]

  end

  def answer
    @answers = [" Great!", " Silly question, get dressed and go to work!.", " I don't care, get dressed and go to work!"]



    @question = params[:question]
    if @question.include?('?')
      @response = @answers[1]
    elsif @question == "I am going to work"
      @response = @answers[0]
    else
      @response = @answers[2]

    end

  end

end
