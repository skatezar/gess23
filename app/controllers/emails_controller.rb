class EmailsController < ApplicationController
	def new
    @email = Email.new
  end

  def create
    @email = Email.new(email_params)

    if @email.save
      redirect_to root_path, notice: 'Email was successfully created.'
    else
      render :new
    end
  end

  private

  def email_params
    params.require(:email).permit(:user_email, :phone, :content_of_email)
  end
end
