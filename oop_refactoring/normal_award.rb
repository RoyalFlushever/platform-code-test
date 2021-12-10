# frozen_string_literal: true

require 'award'

# "NORMAL ITEM" Award
class NormalAward < Award
  @name = 'NORMAL ITEM'

  def update_expiration
    @expires_in -= 1
  end

  def validate_quality
    @quality = 0 if @quality.negative?
    @quality = 50 if @quality > 50
  end

  def update_quality
    update_expiration

    @quality -= 1
    @quality -= 1 if @expires_in.negative?
    validate_quality
  end
end
