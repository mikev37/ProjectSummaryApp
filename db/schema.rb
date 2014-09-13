# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140826000236) do

  create_table "employees", force: true do |t|
    t.string   "contractPickFromDropDown"
    t.string   "programOrTOName"
    t.string   "ESBusinessUnitPickFromDropDown"
    t.string   "programProjectManagerPickFromDropDown"
    t.string   "telecommutingAllowed"
    t.string   "explanation"
    t.string   "workLocationName"
    t.string   "isPrimary"
    t.string   "work"
    t.string   "addressWork"
    t.string   "descriptionOfContract"
    t.string   "hasODCs"
    t.string   "ESRolePickFromDropDown"
    t.string   "endCustomer"
    t.string   "organizationName"
    t.string   "addressOrg"
    t.string   "POC"
    t.string   "ESContractSubtractNumber"
    t.string   "fromFullContractDuration"
    t.string   "toFullContractDuration"
    t.string   "fromBasePeriodPoP"
    t.string   "toBasePeriodPoP"
    t.string   "numberOfOptionYears"
    t.string   "currentContractPeriod"
    t.string   "fromCurrentPeriodPoP"
    t.string   "toCurrentPeriodPoP"
    t.string   "contractTypePickFromDropDown"
    t.string   "originalAmount"
    t.string   "fundedAmount"
    t.string   "projectedFullTerm"
    t.string   "currentPeriodFundingTypePickFromDropDown"
    t.string   "fromPeriodCurrentlyFunded"
    t.string   "toPeriodCurrentlyFunded"
    t.string   "currentPeriodFundingAmount"
    t.string   "fundedValueLaborCurrent"
    t.string   "fundedValueODCsCurrent"
    t.string   "actualExpendedLaborCurrent"
    t.string   "actualExpendedODCsCurrent"
    t.string   "fundedValueLaborPrevious"
    t.string   "fundedValueODCsPrevious"
    t.string   "budgetLabor"
    t.string   "budgetODCs"
    t.string   "actualLabor"
    t.string   "actualODCs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
