require('rspec')
require('scrabble')
require('pry')

describe('#scrabble') do
  it("will return 1 based on one-point characters") do
    expect(number_values("A")).to(eq(1))
  end
  it("will return 8 based on characters") do
    expect(scrabble("word")).to(eq(8))
  end
end
