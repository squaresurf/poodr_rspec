module PoodrRspec
  class Gear
    attr_reader :chainring, :cog, :rim, :tire
    def initialize(args)
      @chainring = args[:chainring]
      @cog = args[:cog]
      @rim = args[:rim]
      @tire = args[:tire]
    end

    def gear_inches
      ratio * Wheel.new(rim, tire).diameter
    end

    def ratio
      chainring / cog.to_f
    end
  end
end
