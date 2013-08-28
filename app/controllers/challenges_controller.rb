class ChallengesController < ApplicationController
  def index
    # @challenges = Challenge.all
    @challenges = @current_user.challenges
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def new
    @challenge = Challenge.new
    1.times {
      question = @challenge.questions.build
      4.times {question.choices.build}
    }
  end

  def create
    @challenge = Challenge.new(params[:challenge])
    @challenge.user_id = @current_user.id
    if @challenge.save
      redirect_to(@challenge)
    else
      render :action => 'new'
    end
  end

  def edit
    @challenge = Challenge.find(params[:id])
    @question = Question.new
  end

  def update
    @challenge = Challenge.find(params[:id])
    if @challenge.update_attributes(params[:challenge])
      redirect_to(@challenge)
    else
      render :actopn => 'edit'
    end
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    redirect_to challenges_path
  end
end