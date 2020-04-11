class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expense_statements = current_user.expense_statements
  end

  def show
    @expense_statement = current_user.expense_statements.find(params[:id])
  end

  def new
    @current_user_company = current_user.company
    @approver_user = @current_user_company.users.find_by(approver:true)

    @expense_statement = current_user.expense_statements.build
    @expense_statement.expense_contents.build
    @expense_statement.build_expense_approval
  end

  def create
    @expense_statement = current_user.expense_statements.build(expense_statement_params)
    if @expense_statement.save
      redirect_to expenses_path
    else
      @current_user_company = current_user.company
      @approver_user = @current_user_company.users.find_by(approver:true)
      render 'new'
    end
  end

  private
    def expense_statement_params
      params.require(:expense_statement).permit(:applied, expense_contents_attributes: [:account_date, :purpose, :facility, :section, :round_trip, :amount, :_destroy], expense_approval_attributes:[:user_id])
    end
end
