class AttemptsController < ApplicationController
  def new
    @challenge = Challenge.find(params[:id])
    @attempt = Attempt.new
  end


  def create

    @attempt = Attempt.new(params[:attempt])
    selected_choices = []
    params.each do |k,v|
      if (k[0,3] == 'ans')
        selected_choices << k.split(':')
      end
    end
    i = 0
    @attempt.user_id = @current_user.id
    @attempt.fails = 0
    @attempt.passes = 0
    @attempt.challenge_id = selected_choices[0][1]
    selected_choices.each {|choice|
      if Challenge.find(choice[1]).questions.find(choice[2]).choices.find(choice[3]).is_correct
        @attempt.passes += 1
      end
    }
      @attempt.fails = Challenge.find(selected_choices[0][1]).questions.count - @attempt.passes
      @attempt.save
    redirect_to(@current_user)
  end

  def update
  end

end

