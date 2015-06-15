class CoachingsController < ApplicationController
  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def coach_answer_enhanced(your_message)
    answer = ""
    answer = "I can feel your motivation!" if (your_message == your_message.upcase)
    if (your_message.downcase == "i am going to work right now!")
      answer = ""
    elsif your_message.include? "?"
      answer = answer + " Silly question, get dressed and go to work!"
    else
      answer = answer + " I don't care, get dressed and go to work!"
    end
    return answer
  end

  def ask
  end
end
