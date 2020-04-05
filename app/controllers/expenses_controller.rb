class ExpensesController < ApplicationController
  before_action :authenticate_user!

  def index
    @expense_statements = current_user.expense_statements
  end

  def show
    @expense_statement = current_user.expense_statements.find(params[:id])
  end
end
