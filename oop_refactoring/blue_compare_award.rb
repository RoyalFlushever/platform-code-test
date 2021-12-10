# frozen_string_literal: true

require 'normal_award'

# "Blue Compare" Award
class BlueCompareAward < NormalAward
  @name = 'Blue Compare'

  def update_quality
    update_expiration

    if @expires_in.negative?
      @quality = 0
    else
      @quality += 1
      @quality += 1 if @expires_in < 10
      @quality += 1 if @expires_in < 5
      @quality = 0 if @expires_in.negative?
    end

    validate_quality
  end
end
