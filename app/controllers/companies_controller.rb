class CompaniesController < ApplicationController
  def index
  end

  def new
    @company = Company.new
    @company.users.build
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private 

    def company_params
        params.require(:company).permit(:name, :address, users_attributes: [:last_name, :first_name, :email, :password, :password_confirmation,:system_admin])
    end

end
