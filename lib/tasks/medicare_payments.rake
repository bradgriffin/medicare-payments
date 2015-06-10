namespace :db do

  desc "load Medicare Payments from csv"
  task :load_medicare_payments  => :environment do    

    require 'csv'

    MedicarePayment.delete_all

    begin

      MedicarePayment.copy_from "./app/assets/import/Medicare_Provider_Util_Payment_PUF_CY2013.txt", :delimiter => "\t", :map => { 
        'NPI' => 'npi',
        'NPPES_PROVIDER_LAST_ORG_NAME' => 'provider_last_org_name',
        'NPPES_PROVIDER_FIRST_NAME' => 'provider_first_name',
        'NPPES_PROVIDER_MI' => 'provider_mi',
        'NPPES_CREDENTIALS' => 'provider_credentials',
        'NPPES_PROVIDER_GENDER' => 'provider_gender',
        'NPPES_ENTITY_CODE' => 'entity_code',
        'NPPES_PROVIDER_STREET1' => 'provider_street1',
        'NPPES_PROVIDER_STREET2' => 'provider_street2',
        'NPPES_PROVIDER_CITY' => 'provider_city',
        'NPPES_PROVIDER_ZIP' => 'provider_zip',
        'NPPES_PROVIDER_STATE' => 'provider_state',
        'NPPES_PROVIDER_COUNTRY' => 'provider_country',
        'PROVIDER_TYPE' => 'provider_type',
        'MEDICARE_PARTICIPATION_INDICATOR' => 'medicare_participation_indicator',
        'PLACE_OF_SERVICE' => 'place_of_service',
        'HCPCS_CODE' => 'hcpcs_code',
        'HCPCS_DESCRIPTION' => 'hcpcs_description',
        'HCPCS_DRUG_INDICATOR' => 'hcpcs_drug_indicator',
        'LINE_SRVC_CNT' => 'line_srvc_cnt',
        'BENE_UNIQUE_CNT' => 'bene_unique_cnt',
        'BENE_DAY_SRVC_CNT' => 'bene_day_srvc_cnt',
        'AVERAGE_MEDICARE_ALLOWED_AMT' => 'average_medicare_allowed_amt',
        'STDEV_MEDICARE_ALLOWED_AMT' => 'stdev_medicare_allowed_amt',
        'AVERAGE_SUBMITTED_CHRG_AMT' => 'average_submitted_chrg_amt',
        'STDEV_SUBMITTED_CHRG_AMT' => 'stdev_submitted_chrg_amt',
        'AVERAGE_MEDICARE_PAYMENT_AMT' => 'average_medicare_payment_amt',
        'STDEV_MEDICARE_PAYMENT_AMT' => 'stdev_medicare_payment_amt'
      }

      # CSV.foreach("./app/assets/import/Medicare_Provider_Util_Payment_PUF_CY2013.txt", :headers => true, :col_sep => "\t") do |row|

      #   MedicarePayment.create(
      #     npi: row[0], 
      #     provider_last_org_name: row[1], 
      #     provider_first_name: row[2],
      #     provider_mi: row[3],
      #     provider_credentials: row[4],
      #     provider_gender: row[5],
      #     entity_code: row[6],
      #     provider_street1: row[7],
      #     provider_street2: row[8],
      #     provider_city: row[9],
      #     provider_zip: row[10],
      #     provider_state: row[11],
      #     provider_country: row[12],
      #     provider_type: row[13],
      #     medicare_participation_indicator: row[14],
      #     place_of_service: row[15],
      #     hcpcs_code: row[16],
      #     hcpcs_description: row[17],
      #     hcpcs_drug_indicator: row[18],
      #     line_srvc_cnt: row[19],
      #     bene_unique_cnt: row[20],
      #     bene_day_srvc_cnt: row[21],
      #     average_medicare_allowed_amt: row[22],
      #     stdev_medicare_allowed_amt: row[23],
      #     average_submitted_chrg_amt: row[24],
      #     stdev_submitted_chrg_amt: row[25],
      #     average_medicare_payment_amt: row[26],
      #     stdev_medicare_payment_amt: row[27]
      #   )
      # end
    rescue
      puts 'this is jacked'
    end
  end
end
