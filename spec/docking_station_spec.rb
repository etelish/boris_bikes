require './lib/docking_station'

describe DockingStation do
  def self.it_responds_to(message)
    it { is_expected.to respond_to message }
  end

  describe '#release_bike' do
    it_responds_to(:release_bike)

    it 'releases working bikes' do
      subject.dock(Bike.new)
      expect(subject.release_bike.working?).to eq true
    end

    it '#release_bike raises exception if dock is empty' do
      expect { subject.release_bike }.to raise_error DockingStation::DockingStationEmpty
    end
  end

  describe '#dock_bike' do
    it_responds_to(:dock)

    it 'accepts a bike when docking' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
end
