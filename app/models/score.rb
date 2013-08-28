class Score
  attr_accessor :challenge_name, :challenge_id, :attempts, :nopass, :nofails

  def initialize
    @attempts = 0
    @nopass = 0
    @nofails = 0
    @challenge_id = 0
    @challenge_name = nil
  end

  def increment_attempts
    @attempts += 1
  end

  def increment_results(numpasses,numfailures)
    numpasses.to_i/(numpasses.to_i + numfailures.to_i) > 0.5 ? @nopass += 1 : @nofails += 1
  end
end
