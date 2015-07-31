module Edmunds

  class ModelYear < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_model_year/v2/03_list_of_years/api-description.html
    def model_years make, model, params = {}
      @parameters = [:state, :view, :submodel, :category]
      call_api "/#{URI.escape(make)}/#{URI.escape(model)}/years?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_model_year/v2/03_years_count/api-description.html
    def model_years_count make, model, params = {}
      @parameters = [:state, :view]
      call_api "/#{URI.escape(make)}/#{URI.escape(model)}/years/count?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_model_year/v2/02_year_details/api-description.html
    def model_year make, model, year, params = {}
      @parameters = [:state, :view, :submodel, :category]
      call_api "/#{URI.escape(make)}/#{URI.escape(model)}/#{URI.escape(year)}?", params
    end

  end
end