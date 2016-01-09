module PoodrRspec
  class Wheel
    attr_reader :rim, :tire
    def initialize(rim, tire)
      @rim = rim
      @tire = tire
    end

    def width
      rim + (tire * 2)
    end
  end
end
