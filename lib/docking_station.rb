class DockingStation
  class DockingStationEmpty < Exception
  end

  class DockingStationFull < Exception
  end

  attr_reader :bike

  def release_bike
    raise DockingStationEmpty if @bike.nil?
    @bike
  end

  def dock(bike)
    raise DockingStationFull if !@bike.nil?
    @bike = bike
  end
end
