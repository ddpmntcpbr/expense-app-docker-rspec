class ExpenseApprovalsController < ApplicationController
  before_action :authenticate_user!
  before_action :approver_user

  def index
    @expense_approvals = current_user.expense_approvals.all
  end

  def show
    @expense_approval = current_user.expense_approvals.find(params[:id])
    @expense_statement = @expense_approval.expense_statement
  end

  def edit
    @expense_approval = current_user.expense_approvals.find(params[:id])
  end

  def update
    @expense_approval = current_user.expense_approvals.find(params[:id])
    if params[:approval]
      if @expense_approval.update(update_expense_approval_params)
        @expense_approval.update(approved:true)
        @expense_approval.expense_statement.update(approved:true)
        redirect_to expense_approvals_path
      else
        render 'edit'
      end
    else
      if @expense_approval.update(update_expense_approval_params)
        @expense_approval.update(approved:false)
        @expense_approval.expense_statement.update(approved:false)
        debugger
        redirect_to expense_approvals_path
      else
        render 'edit'
      end
    end
  end
end

private
  def approver_user
    current_user.approver
  end

  def update_expense_approval_params
    params.require(:expense_approval).permit(:comment)
  end