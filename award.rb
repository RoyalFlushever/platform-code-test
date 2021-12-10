# frozen_string_literal: true

# There is a solution of Object-Oriented Code Refactoring in oop_refactoring :)

# Award class
class Award
  attr_accessor :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    @name = name
    @expires_in = expires_in
    @quality = quality

    @quality = 80 if @name == 'Blue Distinction Plus'
  end

  def update_expiration
    @expires_in -= 1
  end

  def validate_quality
    @quality = 0 if @quality.negative?
    @quality = 50 if @quality > 50
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  # rubocop:disable Metrics/MethodLength
  # rubocop:disable Metrics/PerceivedComplexity
  # rubocop:disable Metrics/AbcSize
  def update_quality
    return if @name == 'Blue Distinction Plus'

    update_expiration

    case @name
    when 'Blue First'
      @quality += 1
      @quality += 1 if @expires_in.negative?
    when 'Blue Compare'
      @quality += 1
      @quality += 1 if @expires_in < 10
      @quality += 1 if @expires_in < 5
      @quality = 0 if @expires_in.negative?
    when 'Blue Star'
      @quality -= 2
      @quality -= 2 if @expires_in.negative?
    when 'NORMAL ITEM'
      @quality -= 1
      @quality -= 1 if @expires_in.negative?
    else
      raise "Unknown award #{@name}"
    end

    validate_quality
  end
  # rubocop:enable Metrics/AbcSize
  # rubocop:enable Metrics/PerceivedComplexity
  # rubocop:enable Metrics/MethodLength
  # rubocop:enable Metrics/CyclomaticComplexity
end
