class DockingStation
  class DockingStationFull < Exception
  end

  class DockingStationEmpty < Exception
  end

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise DockingStationEmpty if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise DockingStationFull if @bikes.count == 20
    @bikes << bike
  end
end
