class User < ActiveRecord::Base
  def mail_deliver
    sleep(5)
    UserMailer.registration_confirmation(self).deliver
  end

end
