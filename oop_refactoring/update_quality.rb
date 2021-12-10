# frozen_string_literal: true

require 'award'

# Update the quality of all awards
def update_quality(awards)
  awards.each(&:update_quality)
end
