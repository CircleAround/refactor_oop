my_number = 12344 # Integer型を実体化したもので「インスタンス」と呼ぶ → Integerのインスタンス
message = '私は文字列型です' # String型を実体化させたもの → Stringのインスタンス

# インスタンスは class でどんな型か調べることができる。
puts my_number.class # -> Integer
puts message.class # -> String

# 文字列型には偶数かを取得できるメソッドがRubyで定義されている。
puts my_number.even? # -> true

# 文字列型には文字の長さを取得できるメソッドがRubyで定義されている。
puts message.size # -> 8


my_number2 = 12345 # Integer型の新たなインスタンスを作る

# インスタンスそれぞによってメソッドの結果が変わったりする
# インスタンスはそれぞれの状態を持っている
puts my_number2.even? # -> false

# 多くの型はnewでインスタンス化できる。文字列はこれを省略して書ける。
message2 = String.new '私は文字列型です2'

# まとめ
# - 多くのプログラミングの中で利用する値は、型を実体化（インスタンス化）したもの。
# - 型はそれぞれ機能を持っていて、メソッドと呼ばれる。
# - 同じ型でインスタンスを複数作ることができる。
# - new を使うと型をインスタンス化できる。
