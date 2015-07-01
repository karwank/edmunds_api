module Edmunds

  class Make < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_make/v2/01_list_of_makes/api-description.html
    def makes params = {}
      @parameters = [:state, :year, :view]
      call_api "/makes?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_make/v2/03_makes_count/api-description.html
    def makes_count params = {}
      @parameters = [:state, :year, :view]
      call_api "/makes/count?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_make/v2/02_make_details/api-description.html
    def make make, params = {}
      @parameters = [:state, :year, :view]
      call_api "/#{make}?", params
    end

  end

end
