my_string = '私は文字列型です'
my_string2 = '俺は文字列型だ'
my_array = ['私', 'は', '配列型', 'です']

puts "# my_string の場合"
puts "あなたは何ですか？: #{my_string.to_s}"
puts "サイズを教えてください: #{my_string.size}"
puts "あなたの型を教えてください: #{my_string.class.name}"

puts "# my_string2 の場合"
puts "あなたは何ですか？: #{my_string2.to_s}"
puts "サイズを教えてください: #{my_string2.size}"
puts "あなたの型を教えてください: #{my_string2.class.name}"

puts "# my_array の場合"
puts "あなたは何ですか？: #{my_array.to_s}"
puts "サイズを教えてください: #{my_array.size}"
puts "あなたの型を教えてください: #{my_array.class.name}"
