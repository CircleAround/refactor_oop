def main
  puts 'これはメールやpush通知を様々な宛先へ送ることを模擬したプログラムです。処理を開始します'

  notifications = [
    EmailSender.new('test1@example.com'),
    IosPushSender.new('iosaaabbccddd'),
    EmailSender.new('test2@example.com'),
    AndroidPushSender.new('andaaabbccddd'),
    EmailSender.new('test3@example.com')
  ]

  notifications.each do |notification|
    # ここにあった if 文が全部スッキリなくなった！
    notification.send
  end

  puts '処理を終了します'
end

class EmailSender
  def initialize(email)
    @email = email
  end

  def send
    send_mail @email
  end
end

class IosPushSender
  def initialize(token)
    @token = token
  end

  def send
    send_push_ios(@token)
  end
end

class AndroidPushSender
  def initialize(token)
    @token = token
  end

  def send
    send_push_android(@token)
  end
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
