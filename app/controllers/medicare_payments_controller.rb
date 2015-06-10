class MedicarePaymentsController < ApplicationController

  def index
    @search = MedicarePayment.search do
      fulltext params[:search]
      facet(:provider_state, :provider_gender, :provider_type, :provider_credentials)
      with(:provider_state, params[:provider_state]) if params[:provider_state]
      with(:provider_gender, params[:provider_gender]) if params[:provider_gender]
      with(:provider_type, params[:provider_type]) if params[:provider_type]
      with(:provider_credentials, params[:provider_credentials]) if params[:provider_credentials]
      paginate(page: params[:page])
    end

    @medicare_payments = @search.results
    @filter = params[:filter] ||= { "None" => "" }
  end

  def show
    @medicare_payment = MedicarePayment.find(params[:id])
  end

end