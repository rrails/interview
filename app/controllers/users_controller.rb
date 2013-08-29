class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    @current_user = @user
    session[:user_id] = @user.id
    redirect_to(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        redirect_to(@user)
      else
        render :action => 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
    @challenges = @user.challenges
    @allchallenges = Challenge.all

    @attempts = @user.attempts.order("challenge_id ASC")
    @scores = []
    if @attempts.empty?
      return
    end
    score = Score.new
    score.challenge_name = Challenge.find(@attempts[0].challenge_id).name
    score.challenge_id = @attempts[0].challenge_id

    @scores.push(score)

    @attempts.each do |attempt|
      if score.challenge_id  != attempt.challenge_id
        score = Score.new
        score.challenge_name = Challenge.find(attempt.challenge_id).name
        score.challenge_id = attempt.challenge_id
        @scores.push(score)
      end

      score.increment_attempts
      score.increment_results(attempt.passes, attempt.fails)
    end
  end

end