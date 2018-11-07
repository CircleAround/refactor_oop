# 型は自分でも作ることができる。
# イメージとしては IntegerやStringもこういう形でクラスがどこかにあるというような
# 整理をしておくとわかりやすい
# class String
#   def initialize(src)
#     @src = src
#   end
#
#   def size
#     @src.size
#   end
# end

class Bookshelf
  def initialize(size)
    @shelfsize = size
  end

  def size
    @shelfsize #「@」が付いているのはインスタンス変数。同じインスタンスの中で一意
  end

  def price
    self.size * 300 # 棚のサイズが大きいものは高額な仕組み
  end
end

# サイズが3の本棚を作りました。作られたものをインスタンスと呼びます
# newを呼ぶとinitializeが呼ばれる仕組み
my_bookshelf = Bookshelf.new(3)
puts "my_bookshelfの型"
puts my_bookshelf.class
puts "my_bookshelfのsize"
puts my_bookshelf.size
puts "my_bookshelfのprice"
puts my_bookshelf.price

# サイズが10の本棚を作りました
my_bookshelf2 = Bookshelf.new(10)
puts "my_bookshelf2の型"
puts my_bookshelf2.class
puts "my_bookshelf2のsize"
puts my_bookshelf2.size
puts "my_bookshelf2のprice"
puts my_bookshelf2.price
