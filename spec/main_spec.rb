require_relative "../lib/main.rb"

describe Main do

  describe "#call" do
  it { expect(subject.call(1)).to eq 'I'}
  it { expect(subject.call(2)).to eq 'II'}
  it { expect(subject.call(3)).to eq 'III'}
  it { expect(subject.call(4)).to eq 'IV'}
  it { expect(subject.call(5)).to eq 'V'}
  it { expect(subject.call(6)).to eq 'VI'}
  it { expect(subject.call(7)).to eq 'VII'}
  it { expect(subject.call(8)).to eq 'VIII'}
  it { expect(subject.call(9)).to eq 'IX'}
  it { expect(subject.call(10)).to eq 'X'}
  it { expect(subject.call(11)).to eq 'XI'}
  it { expect(subject.call(20)).to eq 'XX'}
  it { expect(subject.call(30)).to eq 'XXX'}
  it { expect(subject.call(39)).to eq 'XXXIX'}
  it { expect(subject.call(40)).to eq 'XL'}
  it { expect(subject.call(1000)).to eq 'M'}
  it { expect(subject.call(89)).to eq 'LXXXIX'}
  it { expect(subject.call(99)).to eq 'XCIX'}
  it { expect(subject.call(90)).to eq 'XC'}
  it { expect(subject.call(100)).to eq 'C'}
  it { expect(subject.call(199)).to eq 'CXCIX'}
  it { expect(subject.call(200)).to eq 'CC'}
  it { expect(subject.call(300)).to eq 'CCC'}
  it { expect(subject.call(333)).to eq 'CCCXXXIII'}
  it { expect(subject.call(444)).to eq 'CDXLIV'}
  it { expect(subject.call(501)).to eq 'DI'}
  it { expect(subject.call(503)).to eq 'DIII'}
  end

  describe "#convert" do
    it { expect(subject.converte([1,2,3,800,799,900,999])).to eq ['I','II','III','DCCC','DCCXCIX','CM','CMXCIX']}
  end
end