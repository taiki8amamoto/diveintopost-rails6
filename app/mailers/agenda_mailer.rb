class AgendaMailer < ApplicationMailer
  def delete_agenda_mail(agenda)
    @agenda = agenda
    @users = @agenda.team.members
    mail to: @users.pluck(:email), subject: "アジェンダ削除の通知メール"
  end
end
