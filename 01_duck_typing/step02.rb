def display_info(instance)
  puts "あなたは何ですか？: #{instance.to_s}"
  puts "サイズを教えてください: #{instance.size}"
  puts "あなたの型を教えてください: #{instance.class.name}"
end

my_string1 = '私は文字列型です'
my_string2 = '俺は文字列型だ'
my_array = ['私', 'は', '配列型', 'です']

puts "# my_string1 の場合"
display_info(my_string1)

puts "# my_string2 の場合"
display_info(my_string2)

puts "# my_array の場合"
display_info(my_array)

# 型が違っていても、それぞれのメソッドを書く必要はありません。
# なぜなら、文字列型（String）と、配列型（Array）はどちらも
# to_sとsizeというメソッドを持っているからです。
