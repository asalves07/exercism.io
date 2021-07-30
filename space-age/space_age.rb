class SpaceAge
  attr_reader :seconds

  SECONDS_FOR_EARTH_YEARS = 31_557_600.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  {
    earth: 1.0,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }.each do |planet, earth_years|
    define_method :"on_#{planet}" do
      seconds.fdiv(SECONDS_FOR_EARTH_YEARS * earth_years).round(2)
    end
  end
end
