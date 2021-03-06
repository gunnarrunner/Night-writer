class NightWriter

  def initialize(message, braille)
    @message = message
    @braille = braille
    @translate = {
    "a" => ["0.", "..", ".."], "b" => ["0.", "0.", ".."], "c" => ["00", "..", ".."], "d" => ["00", ".0", ".."],
    "e" => ["0.", ".0.", "."], "f" => ["00", "0.", ".."], "g" => ["00", "00", ".."], "h" => ["0.", "00", ".."],
    "i" => [".0", "0.", ".."], "j" => [".0", "00", ".."], "k" => ["0.", "..", "0."], "l" => ["0.", "0.", "0."],
    "m" => ["00", "..", "0."], "n" => ["00", ".0", "0."], "o" => ["0.", ".0", "0."], "p" => ["00", "0.", "0."],
    "q" => ["00", "00", "0."], "r" => ["0.", "00", "0."], "s" => [".0", "0.", "0."], "t" => [".0", "00", "0."],
    "u" => ["0.", "..", "00"], "v" => ["0.", "0.", "00"], "w" => [".0", "00", ".0"], "x" => ["00", "..", "00"],
    "y" => ["00", ".0", "00"], "z" => ["0.", ".0", "00"], " " => ["..", "..", ".."]
                  }
  end

  def find_braille(input)
    @translate[input]
  end


  # def txt.map do |input|
  #   find_braille(input)
  # end
  def self.count_braille_txt
    File.open("./text_files/#{ARGV[1]}", "a+") {|f| f.read.chomp}.length
  end

  def read_file
    File.open("./text_files/#{ARGV[0]}", "a+").each do |input|
      input.read.find_braille(input)
    end
  end

  # def translate
  #   read.file.map do |input|
  #     find_braille(input)
  #   end
  # end

  # IO.copy_stream("./text_files/#{ARGV[0]}", "./text_files/#{ARGV[1]}")

  puts "Created #{ARGV[1]} containing #{self.count_braille_txt} characters"

end
