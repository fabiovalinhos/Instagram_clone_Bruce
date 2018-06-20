class NotifierMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Seja bem vindo ao Instagram do Bruce !')
  end

  # def welcome_email(user)
  #   @user = user
  #   mail(to: @user.email, subject: 'Seja bem vindo ao Instagram do Bruce !')
  # end

end
