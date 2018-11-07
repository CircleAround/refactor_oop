def main
  puts 'これはメールやpush通知を様々な宛先へ送ることを模擬したプログラムです。処理を開始します'

  notifications = [
    { kind: :email, email: 'test1@example.com' },
    { kind: :ios, token: 'iosaaabbccddd' },
    { kind: :email, email: 'test2@example.com' },
    { kind: :android, token: 'andaaabbccddd' },
    { kind: :email, email: 'test3@example.com' }
  ]

  notifications.each do |notification|
    if notification[:kind] == :email
      send_mail(notification[:email])
    elsif notification[:kind] == :ios
      send_push_ios(notification[:token])
    elsif notification[:kind] == :android
      send_push_android(notification[:token])
    end
  end
  # 上記のeachのコードに潜む課題
  # * 新しい送信方法を追加する時に他にも影響しそうなこの場所を変更しないといけない（ex. SMS通知が追加）
  # * 条件分岐が増えると脳のリソースを使ってしまう
  # * 条件分岐が増えるとバグが増えるのでできれば減らしたい

  puts '処理を終了します'
end

def send_mail(email)
  puts "メールを: #{email}へ送信します"

  # ...
  # 本当は実際の送信処理が入ります
end

def send_push_ios(token)
  puts "iOSのプッシュ通知を: #{token}へ送信します"

  # ...
  # 本当は実際の送信処理が入ります
end

def send_push_android(token)
  puts "Andoroidのプッシュ通知を: #{token}へ送信します"

  # ...
  # 本当は実際の送信処理が入ります
end

main
