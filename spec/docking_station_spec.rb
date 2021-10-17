require 'docking_station'

describe DockingStation do

#  it 'respond_to release_bike' do
#   expect(subject).to respond_to :release_bike
#  end
  it { is_expected.to respond_to :release_bike }

  it 'release working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  # it { is_expected.to respond_to(:dock).with(1).argument }
  it 'docks something' do
    bike = Bike.new
    # we want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end

  it {is_expected.to respond_to(:bike)}

end