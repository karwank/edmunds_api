module Edmunds

  class Dealer < Dealership

    # http://developer.edmunds.com/api-documentation/dealer/details_and_location/v2/02_dealers/api-description.html
    def dealers params = {}
      @parameters = [:make, :radius, :zipcode, :pagenum, :pagesize, :state]
      call_api "/dealers?", params
    end

    def dealers_count params = {}
      @parameters = [:make, :radius, :zipcode, :state]
      call_api "/dealers/count?", params
    end

    # http://developer.edmunds.com/api-documentation/dealer/details_and_location/v2/01_dealer_by_id/api-description.html
    def dealer dealer_id
      @parameters = []
      call_api "/dealers/#{dealer_id}?", params
    end

  end

end