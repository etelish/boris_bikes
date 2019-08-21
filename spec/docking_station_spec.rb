require './lib/docking_station'

describe DockingStation do

  let(:bike) { Bike.new }

  def self.it_responds_to(message)
    it { is_expected.to respond_to message }
  end

  describe '#release_bike' do
    it_responds_to(:release_bike)

    it 'releases working bikes' do
      subject.dock(bike)
      expect(subject.release_bike.working?).to eq true
    end

    it 'raises exception if dock is empty' do
      expect { subject.release_bike }.to raise_error DockingStation::DockingStationEmpty
    end
  end

  describe '#dock' do
    
    it_responds_to(:dock)

    it 'accepts a bike when docking' do
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end

    it 'raises exception if dock is full' do
      subject.dock(bike)
      expect { subject.dock(bike) }.to raise_error DockingStation::DockingStationFull
    end
  end
end
