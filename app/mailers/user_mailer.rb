class UserMailer < ApplicationMailer

    def confirm(user)
        @user = user
        mail(to:  user.mail, subject:'About your inscription on our learning website')
    end
end
