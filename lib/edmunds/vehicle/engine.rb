module Edmunds

  class Engine < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_engine_and_transmission/v2/02_engines_by_style/api-parameters.html
    def engines style_id, params = {}
      @parameters = [:availability, :name]
      call_api "/styles/#{style_id}/engines?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_engine_and_transmission/v2/01_engine_id/api-parameters.html
    def engine engine_id
      @parameters = []
      call_api "/engines/#{engine_id}?", params
    end

  end

end