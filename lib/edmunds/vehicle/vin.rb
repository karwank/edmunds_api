module Edmunds

  class Vin < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_vin_decoding/v2/02_by_vin/api-description.html
    def vin vin
      @parameters = []
      call_api "/vins/#{vin}?", params
    end

  end

end