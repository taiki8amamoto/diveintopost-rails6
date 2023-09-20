class ChangeOwnerMailer < ApplicationMailer
  def change_owner_mail(user)
    @user = user

    mail to: @user.email, subject: "お問い合わせの確認メール"
  end
end
