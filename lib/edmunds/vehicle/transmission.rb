module Edmunds

  class Transmission < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_engine_and_transmission/v2/04_transmissions_by_style/api-description.html
    def transmissions style_id, params = {}
      @parameters = [:availability, :name]
      call_api "/styles/#{style_id}/transmissions?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_engine_and_transmission/v2/03_transmission_id/api-parameters.html
    def transmission transmission_id
      @parameters = []
      call_api "/transmissions/#{transmission_id}?", params
    end

  end

end