require 'digest'

puts "Введите слово или даже фразу, которую нужно зашифровать:"
input = STDIN.gets.chomp

puts "Выберите способ для шифрования:
1. MD5.
2. SHA."
choice = STDIN.gets.chomp.to_i

until choice.between?(1,2)
  puts "Выбеоите 1 или 2:"
  choice = STDIN.gets.chomp.to_i
end

case choice
when 1
  puts "Вот что получилось:"
  puts Digest::MD5.hexdigest(input)
when 2
  puts "Вот что получилось:"
  puts Digest::SHA1.hexdigest(input)
end