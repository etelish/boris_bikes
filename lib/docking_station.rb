class DockingStation
  class DockingStationEmpty < Exception
  end

  attr_reader :bike

  def release_bike
    raise DockingStationEmpty if @bike.nil?
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end
