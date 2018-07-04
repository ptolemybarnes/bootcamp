require 'chance'

describe Chance do
  CERTAIN = Chance.new(1.0)
	LIKELY = Chance.new(0.75)
	EQUALLY_LIKELY = Chance.new(0.5)
	UNLIKELY = Chance.new(0.25)
	IMPOSSIBLE = Chance.new(0.0)

  describe 'tests equality' do
    it { expect(CERTAIN).to eq Chance.new(1.0) }
    it { expect(LIKELY).to eq Chance.new(0.75) }
    it { expect(EQUALLY_LIKELY).to eq Chance.new(0.5) }
    it { expect(UNLIKELY).to eq Chance.new(0.25) }
    it { expect(IMPOSSIBLE).to eq Chance.new(0.0) }
  end
end

