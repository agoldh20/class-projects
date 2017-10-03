class Api::V1::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email]
                            )
    @employee.save
    render :show
  end

  def update
    @employee = Employee.find(params[:id])
    @employee = Employee.assign_attributes(
                            first_name: params[:first_name],
                            last_name: params[:last_name],
                            email: params[:email]
                            )
    @employee.save
    render :show
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id]).destroy
    render json: {message: "Employee Destroyed"}, code: 200
  end
end
