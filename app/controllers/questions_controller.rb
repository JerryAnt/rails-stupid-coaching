class QuestionsController < ApplicationController
  def ask
    # define an instance variable here while at the view
    if params[:question]
      @question = params[:question]
    end
  end

  def answer

    if ask == 'I am going to work'
    @answers ='Great!'
    elsif ask.include? '?'
      @answers = 'Silly question, get dressed and go to work!'
    else
      @answers = 'I don\'t care, get dressed and go to work!'

    end
  end
end
