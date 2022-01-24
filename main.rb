require 'digest/md5'
require 'digest/sha1'

puts 'Введите слово или фразу для шифрования:'

input_string = $stdin.gets.chomp

puts "\nКаким способом зашифровать:"
puts '1. MD5'
puts '2. SHA1'
puts '3. SHA2'

input_user_choice = $stdin.gets.to_i

case input_user_choice
when 1
  encrypt_string = Digest::MD5.hexdigest(input_string)
when 2
  encrypt_string = Digest::SHA1.hexdigest(input_string)
when 3
  encrypt_string = Digest::SHA2.hexdigest(input_string)
end

puts "\nВот что получилось \n#{encrypt_string}"
