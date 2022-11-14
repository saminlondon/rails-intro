class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @results = nil

    if @questions == "I'm going to work"
      @results = "Great!"
    elsif @questions.include?("?")
      @results = "Silly question, get dressed and go to work!"
    else
      @results = "I don't care, get dressed and go to work!"
    end
  end
end
