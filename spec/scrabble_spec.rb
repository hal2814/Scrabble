require('rspec')
require('scrabble')
require('pry')

describe('#scrabble') do
  letterObj = Letter.new()
  wordObj = Word.new()
  it("will return 1 based on one-point characters") do
    expect(letterObj.number_values("A")).to(eq(1))
  end
  it("will return 8 based on characters") do
    expect(wordObj.scrabble("quiz")).to(eq(22))
  end
end
