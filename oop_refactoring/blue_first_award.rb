# frozen_string_literal: true

require 'normal_award'

# "Blue First" Award
class BlueFirstAward < NormalAward
  @name = 'Blue First'

  def update_quality
    update_expiration

    @quality += 1
    @quality += 1 if @expires_in.negative?
    validate_quality
  end
end
