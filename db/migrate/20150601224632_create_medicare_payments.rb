class CreateMedicarePayments < ActiveRecord::Migration
  def change
    create_table :medicare_payments do |t|
      t.string :npi
      t.string :provider_last_org_name
      t.string :provider_first_name
      t.string :provider_mi
      t.string :provider_credentials
      t.string :provider_gender
      t.string :entity_code
      t.string :provider_street1
      t.string :provider_street2
      t.string :provider_city
      t.string :provider_zip
      t.string :provider_state
      t.string :provider_country
      t.string :provider_type
      t.string :medicare_participation_indicator
      t.string :place_of_service
      t.string :hcpcs_code
      t.string :hcpcs_description
      t.string :hcpcs_drug_indicator
      t.integer :line_srvc_cnt
      t.integer :bene_unique_cnt
      t.integer :bene_day_srvc_cnt
      t.integer :average_medicare_allowed_amt
      t.integer :stdev_medicare_allowed_amt
      t.integer :average_submitted_chrg_amt
      t.integer :stdev_submitted_chrg_amt
      t.integer :average_medicare_payment_amt
      t.integer :stdev_medicare_payment_amt
      t.timestamps null: false
    end
  end
end
