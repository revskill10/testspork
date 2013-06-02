require 'mail'

Mail.defaults do
  delivery_method :smtp, {
    :port      => 587,
    :address   => "smtp.mandrillapp.com",
    :user_name => "revskill09@gmail.com",
    :password  => "Lm92fIOyxL86hQdeE44Ndw"
  }
end

mail = Mail.deliver do
  to      'dungth@hpu.edu.vn,hoangdung1987@gmail.com,revskill09@gmail.com'
  from    'Hoang Dung <revskill09@gmail.com>'
  subject 'First multipart email sent with Mail'

  text_part do
    body 'This is plain text'
  end

  html_part do
    content_type 'text/html; charset=UTF-8'
    body '<h1>This is HTML</h1>'
  end

   add_file 'C:\Users\CPN\Pictures\dspace-logo-only.png'
end