module Edmunds

  class Model < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_model/v2/01_list_of_models/api-description.html
    def models make, params = {}
      @parameters = [:state, :year, :view, :submodel, :category]
      call_api "/#{URI.escape(make)}/models?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_model/v2/03_models_count/api-description.html
    def models_count make, params = {}
      @parameters = [:state, :year, :view, :submodel, :category]
      call_api "/#{URI.escape(make)}/models/count?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_model/v2/02_model_details/api-description.html
    def model make, model, params = {}
      @parameters = [:state, :year, :view, :submodel, :category]
      call_api "/#{URI.escape(make)}/#{URI.escape(model)}?", params
    end

  end
end
