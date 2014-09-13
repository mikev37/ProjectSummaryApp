class EmployeesController < ApplicationController
	def new
		@employee = Employee.new
	end
	
	def show
	  @employee = Employee.find(params[:id])
	end
	
	def index
	  @employees = Employee.all
	end
	
	def edit
		@employee = Employee.find(params[:id])
	end
	
	def destroy
	  @employee = Employee.find(params[:id])
	  @employee.destroy
	 
	  redirect_to employees_path
	end
	
	def create
		puts params
		@employee = Employee.new(employee_params)
 
		if @employee.save
			redirect_to @employee
		else 
			render 'new'
		end
	end
		
	def update
	  @employee = Employee.find(params[:id])
	 
	  if @employee.update(employee_params)
		redirect_to @employee
	  else
		render 'edit'
	  end
	end
	 
	private
	  def employee_params
		params.require(:employee).permit(:contractPickFromDropDown, :programOrTOName, :ESBusinessUnitPickFromDropDown, :programProjectManagerPickFromDropDown, :telecommutingAllowed, :explanation, :workLocationName, :isPrimary, :work, :addressWork, :descriptionOfContract, :hasODCs, :ESRolePickFromDropDown, :endCustomer, :organizationName, :addressOrg, :POC, :ESContractSubtractNumber, :fromFullContractDuration, :toFullContractDuration, :fromBasePeriodPoP, :toBasePeriodPoP, :numberOfOptionYears, :currentContractPeriod, :fromCurrentPeriodPoP, :toCurrentPeriodPoP, :contractTypePickFromDropDown, :originalAmount, :fundedAmount, :projectedFullTerm, :currentPeriodFundingTypePickFromDropDown, :fromPeriodCurrentlyFunded, :toPeriodCurrentlyFunded, :currentPeriodFundingAmount, :fundedValueLaborCurrent, :fundedValueODCsCurrent, :actualExpendedLaborCurrent, :actualExpendedODCsCurrent, :fundedValueLaborPrevious, :fundedValueODCsPrevious, :budgetLabor, :budgetODCs, :actualLabor, :actualODCs)
	  end
end
