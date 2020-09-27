require 'minitest/autorun'
require 'minitest/pride'

class StringTest < Minitest::Test
  def test_1
    name = "alice"
    actual = name.capitalize
    expected = "Alice"

    assert_equal expected, actual
  end

  def test_2
    name = "aLiCe"
    actual = name.upcase
    expected = "ALICE"

    assert_equal expected, actual
  end

  def test_3
    name = "AlIcE"
    actual = name.downcase
    expected = "alice"

    assert_equal expected, actual
  end

  def test_4
    rhyme = "peter piper picked a peck of picked peppers"
    actual = rhyme.reverse
    expected = "sreppep dekcip fo kcep a dekcip repip retep"

    assert_equal expected, actual
  end

  def test_5
    word = "ticking"
    actual = word.gsub('t', 'k')
    expected = "kicking"

    assert_equal expected, actual
  end

  def test_6
    word = "ticking"
    actual = word.gsub('ti', 'clo')
    expected = "clocking"

    assert_equal expected, actual
  end

  def test_7
    words = "five sleepy kittens"
    actual = words.gsub('e', '*')
    expected = "fiv* sl**py kitt*ns"

    assert_equal expected, actual
  end

  def test_8
    greeting = "Hello!!"
    actual = greeting.chop
    expected = "Hello!"

    assert_equal expected, actual
  end

  def test_9
    greeting = "Hello!!\n"
    actual = greeting.chop
    expected = "Hello!!"

    assert_equal expected, actual
  end

  def test_10
    greeting = "Hello!!\n\n"
    actual = greeting.chomp
    expected = "Hello!!\n"

    assert_equal expected, actual
  end

  def test_11
    rhyme = "eeny, meeny, miny, moe"
    actual = rhyme.gsub('e', '')
    expected = "ny, mny, miny, mo"

    assert_equal expected, actual
  end

  def test_12
    rhyme = "eeny, meeny, miny, moe"
    actual = rhyme.gsub(/[aeiou]/, '')
    expected = "ny, mny, mny, m"

    assert_equal expected, actual
  end

  def test_13
    greeting = "Hello World!"
    actual = greeting.length
    expected = 12

    assert_equal expected, actual
  end

  def test_14
    greeting = "Hello World!\n"
    actual = greeting.length
    expected = 13

    assert_equal expected, actual
  end

  def test_15
    greeting = "Hello       World!"
    actual = greeting.length
    expected = 18

    assert_equal expected, actual
  end

  def test_16
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string
    actual = greeting.count('o')
    expected = 2

    assert_equal expected, actual
  end

  def test_17
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string
    actual = greeting.count("\\aeiou")
    expected = 3

    assert_equal expected, actual
  end

  def test_18
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'
    actual = greeting.include?("llo")
    expected = true

    assert_equal expected, actual
  end

  def test_19
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'
    actual = greeting.include?("lol")
    expected = false

    assert_equal expected, actual
  end

  def test_20
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = greeting + " " + name
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_21
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = greeting.concat(' ', name)
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_22
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = greeting.insert(-1, " " + name)
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_23
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = greeting << " " << name
    expected = "Hello World, my name is Harry Potter"

    assert_equal expected, actual
  end

  def test_24
    phrase = "  \n\t to the moon\n\n\t    "
    actual = phrase.strip
    expected = "to the moon"

    assert_equal expected, actual
  end
end
