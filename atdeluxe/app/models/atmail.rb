class Atmail
  def self.send_mail(mail_subject, mail_body)
    options = {
      :address              => "smtp.gmail.com",
      :port                 => 587,
      :domain               =>"gmail.com",
      :user_name            =>  "xxx",
      :authentication =>"plain",
      :password             => "secret",
      :enable_starttls_auto => true,
      :openssl_verify_mode  => 'none'
    }
    options_hotmail = {
      :address              => "smtp.live.com",
      :port                 =>587,
      :domain               =>"gmail.com",
      :user_name            =>  "xxx@live.com",
      :authentication =>"plain",
      :password             => "secret",

    }
    Mail.defaults do
      delivery_method :smtp, options_hotmail
    end

    mail = Mail.new do
      from      "xxxx@gmail.com"
      to        "xxx@gmail.com"
      subject   mail_subject
      headers         "Reply-to" => "xxx@xxx.xxx"
      html_part do
        content_type 'text/html; charset=UTF-8'
        body mail_body
      end
    end

    mail.deliver!
  end
end