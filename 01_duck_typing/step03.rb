class Bookshelf
  def initialize(size)
    @shelfsize = size
  end

  def size
    @shelfsize
  end

  def to_s
    "私はサイズが#{@shelfsize}のBookshelfです"
  end
end

def display_info(instance)
  puts "あなたは何ですか？: #{instance.to_s}"
  puts "サイズを教えてください: #{instance.size}"
  puts "あなたの型を教えてください: #{instance.class.name}"
end

my_string1 = '私は文字列型です'
my_string2 = '俺は文字列型だ'
my_array = ['私', 'は', '配列型', 'です']
my_bookshelf = Bookshelf.new(3)

puts "# my_string1 の場合"
display_info(my_string1)

puts "# my_string2 の場合"
display_info(my_string2)

puts "# my_array の場合"
display_info(my_array)

puts "# my_bookshelf の場合"
display_info(my_bookshelf)

# MyTypeはsizeだけ定義しています。
# class.nameは基本的にどの型も保持している機能だからです
