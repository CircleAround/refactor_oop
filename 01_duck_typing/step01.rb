def display_string_info(string)
  puts "あなたは何ですか？: #{string.to_s}"
  puts "サイズを教えてください: #{string.size}"
  puts "あなたの型を教えてください: #{string.class.name}"
end

def display_array_info(array)
  puts "あなたは何ですか？: #{array.to_s}"
  puts "サイズを教えてください: #{array.size}"
  puts "あなたの型を教えてください: #{array.class.name}"
end

my_string1 = '私は文字列型です'
my_string2 = '俺は文字列型だ'
my_array = ['私', 'は', '配列型', 'です']

puts "# my_string1 の場合"
display_string_info(my_string1)

puts "# my_string2 の場合"
display_string_info(my_string2)

puts "# my_array の場合"
display_array_info(my_array)
