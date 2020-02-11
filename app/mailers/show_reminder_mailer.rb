class ShowReminderMailer < ApplicationMailer
    default from: 'support@show_reminder.com'
    def send_reminder(show, user)
        @show = show
        @user = user
        mail(to: @user.email,
            subject: "Your favorite show is about to start")
    end
end
