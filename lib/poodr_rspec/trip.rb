module PoodrRspec
  class Trip
    def prepare(preparers)
      preparers.each { |preparer| preparer.prepare_trip(self) }
    end
  end
end
