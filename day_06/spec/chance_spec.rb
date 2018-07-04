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

  describe 'tests not' do
    it { expect(UNLIKELY).to eq LIKELY.not }
    it { expect(LIKELY).to eq LIKELY.not.not }
    it { expect(LIKELY).to eq !!LIKELY }
    it { expect(CERTAIN).to eq IMPOSSIBLE.not }
  end

  describe 'test_and' do
    it { expect(UNLIKELY).to eq EQUALLY_LIKELY.and(EQUALLY_LIKELY) }
    it { expect(Chance.new(0.1875)).to eq LIKELY.and(UNLIKELY) }
    it { expect(Chance.new(0.1875)).to eq(LIKELY & UNLIKELY) }
    it { expect(LIKELY).to eq CERTAIN.and(LIKELY) }
    it { expect(IMPOSSIBLE).to eq IMPOSSIBLE.and(LIKELY) }
  end

  describe 'test or' do
    it { expect(LIKELY).to eq EQUALLY_LIKELY.or(EQUALLY_LIKELY) }
    it { expect(Chance.new(0.8125)).to eq(LIKELY.or(UNLIKELY)) }
    it { expect(Chance.new(0.8125)).to eq(LIKELY | UNLIKELY) }
    it { expect(CERTAIN).to eq CERTAIN.or(LIKELY) }
    it { expect(LIKELY).to eq IMPOSSIBLE.or(LIKELY) }
  end
end



