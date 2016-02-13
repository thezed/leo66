class Message < ActionMailer::Base
  def gmail_message(order)
    subject    'Заказ c www.leo66.ru'
    recipients 'a1214@list.ru'
    from       'leo66.ru@gmail.com'
    sent_on    Time.now
    
    body       :order => order
  end
end
