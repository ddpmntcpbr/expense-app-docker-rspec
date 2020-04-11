class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_approver_user, only:[:new,:create,:edit,:update]

  def index
    @expense_statements = current_user.expense_statements
  end

  def show
    @expense_statement = current_user.expense_statements.find(params[:id])
  end

  def new
    @expense_statement = current_user.expense_statements.build
    @expense_statement.expense_contents.build
    @expense_statement.build_expense_approval
  end

  def create
    @expense_statement = current_user.expense_statements.build(expense_statement_params)
    if @expense_statement.save
      redirect_to expenses_path
    else
      render 'new'
    end
  end

  def edit
    @expense_statement = current_user.expense_statements.find(params[:id])
  end

  def update
    @expense_statement = current_user.expense_statements.find(params[:id])
    if @expense_statement.update(update_expense_statement_params)
      redirect_to expenses_path
    else
      render 'edit'
    end
  end

  def destroy
    @expense_statement = current_user.expense_statements.find(params[:id])
    @expense_statement.destroy
    redirect_to expenses_path
  end  

  private
    def expense_statement_params
      params.require(:expense_statement).permit(:applied, expense_contents_attributes: [:account_date, :purpose, :facility, :section, :round_trip, :amount, :_destroy], expense_approval_attributes:[:user_id])
    end

    def update_expense_statement_params
      params.require(:expense_statement).permit(:applied, expense_contents_attributes: [:account_date, :purpose, :facility, :section, :round_trip, :amount, :_destroy, :id], expense_approval_attributes:[:user_id,:_destroy, :id])
    end

    def get_approver_user
      @current_user_company = current_user.company
      @approver_user = @current_user_company.users.find_by(approver:true)
    end
end
