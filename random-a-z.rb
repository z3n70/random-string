# generate random string
def random_string
  # define array of characters
  chars = [*'a'..'z'] + [*'0'..'9']

  # generate random string
  (0...4).map { chars[rand(chars.size)] }.join
end

# generate random strings and save to file
File.open("a.txt", "w") do |file|
  # loop through all possible combinations
  ('aaa9'..'zzz9').each do |str|
    # generate random string and write to file
    file.write(str +"\n")
  end
end

