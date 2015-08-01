require 'inject_alternative'

describe Array do
  it "responds to alternative method" do
    expect(subject).to respond_to(:inject_alternative).with(1).argument
  end

  it "responds exactly like inject" do
    array = [1,2,3,4]
    initial = 1
    inject = array.inject(initial) { |x, y| x + y}
    expect(array.inject_alternative(initial) { |x, y| x + y }).to eq inject
  end

end