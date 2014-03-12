class AtmailController < ApplicationController
  def index
    Atmail.send_mail("Hello","This is just a body with <strong>html</strong>")
  end
end
