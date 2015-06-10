class MedicarePayment < ActiveRecord::Base
  acts_as_copy_target

  searchable do
    text :npi, :provider_last_org_name, :provider_first_name, :hcpcs_code, :hcpcs_description
    string :provider_state
    string :provider_gender
    string :provider_type
    string :provider_credentials
    integer :line_srvc_cnt
    integer :average_medicare_payment_amt
  end

end
