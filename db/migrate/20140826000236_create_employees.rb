class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
		t.string :contractPickFromDropDown
		t.string :programOrTOName
		t.string :ESBusinessUnitPickFromDropDown
		t.string :programProjectManagerPickFromDropDown
		t.string :telecommutingAllowed
		t.string :explanation
		t.string :workLocationName
		t.string :isPrimary
		t.string :work
		t.string :addressWork
		t.string :descriptionOfContract
		t.string :hasODCs
		t.string :ESRolePickFromDropDown
		t.string :endCustomer
		t.string :organizationName
		t.string :addressOrg
		t.string :POC
		t.string :ESContractSubtractNumber
		t.string :fromFullContractDuration
		t.string :toFullContractDuration
		t.string :fromBasePeriodPoP
		t.string :toBasePeriodPoP
		t.string :numberOfOptionYears
		t.string :currentContractPeriod
		t.string :fromCurrentPeriodPoP
		t.string :toCurrentPeriodPoP
		t.string :contractTypePickFromDropDown
		t.string :originalAmount
		t.string :fundedAmount
		t.string :projectedFullTerm
		t.string :currentPeriodFundingTypePickFromDropDown
		t.string :fromPeriodCurrentlyFunded
		t.string :toPeriodCurrentlyFunded
		t.string :currentPeriodFundingAmount
		t.string :fundedValueLaborCurrent
		t.string :fundedValueODCsCurrent
		t.string :actualExpendedLaborCurrent
		t.string :actualExpendedODCsCurrent
		t.string :fundedValueLaborPrevious
		t.string :fundedValueODCsPrevious
		t.string :budgetLabor
		t.string :budgetODCs
		t.string :actualLabor
		t.string :actualODCs
		t.timestamps
    end
  end
end
