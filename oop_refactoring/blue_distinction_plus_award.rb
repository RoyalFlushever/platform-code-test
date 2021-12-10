# frozen_string_literal: true

require 'normal_award'

# "Blue Distinction Plus" Award
class BlueDistinctionPlusAward < NormalAward
  @name = 'Blue Distinction Plus'
  @quality = 80

  def update_expiration; end

  def update_quality; end
end
