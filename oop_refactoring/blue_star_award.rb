# frozen_string_literal: true

require 'normal_award'

# "Blue Star" Award
class BlueStarAward < NormalAward
  @name = 'Blue Star'

  def update_quality
    update_expiration

    @quality -= 2
    @quality -= 2 if @expires_in.negative?
    validate_quality
  end
end
