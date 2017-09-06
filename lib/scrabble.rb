

class Letter
  def number_values(letter)
    letter = letter.upcase
    one = ["A","E","I","O","U","L","N","R",'S','T']
    for i in 0..one.length-1 do
      if letter == one[i]
        return 1
      end
    end

    two = ['D',"G"]
    for i in 0..two.length-1 do
      if letter == two[i]
        return 2
      end
    end

    three = ['B',"C","M",'P']
    for i in 0..three.length-1 do
      if letter == three[i]
        return 3
      end
    end

    four = ['F','H','V','W','Y']
    for i in 0..four.length-1 do
      if letter == four[i]
        return 4
      end
    end

    five = ["K"]
    for i in 0..five.length-1 do
      if letter == five[i]
        return 5
      end
    end

    eight = ["J", "X"]
    for i in 0..eight.length-1 do
      if letter == eight[i]
        return 8
      end
    end

    ten = ["Q", "Z"]
    for i in 0..ten.length-1 do
      if letter == ten[i]
        return 10
      end
    end
  end
end

class Word < Letter
  def scrabble(word)
    points = 0
    # obj = Letter.new()
    (0..word.length-1).each do |i|
      score = number_values(word[i])
      points += score
    end
    return points
  end
end
