require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test
  def test_it_exists
    night_writer = NightWriter.new("message.txt", "braille.txt")
    assert_instance_of NightWriter, night_writer
  end

  def test_it_can_get_a_braille_letter
    night_writer = NightWriter.new("message.txt", "braille.txt")
    input = "a"
    expected = ["0.", "..", ".."]
    puts expected
    assert_equal expected, night_writer.find_braille(input)
  end

  def test_it_can_get_two_braille_letters
    skip
    night_writer = NightWriter.new("message.txt", "braille.txt")
    input = "ab"
    few_letters = ["0.", "..", ".."],["0.", "0.", ".."]
    puts few_letters
    assert_equal few_letters, night_writer.find_braille(input)
  end
end
