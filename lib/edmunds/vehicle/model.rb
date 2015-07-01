module Edmunds

  class Model < Vehicle

    def models make, params = {}
      @parameters = [:state, :year, :view, :submodel, :category]
      call_api "/#{make}/models?", params
    end

    def models_count make, params = {}
      @parameters = [:state, :year, :view, :submodel, :category]
      call_api "/#{make}/models/count?", params
    end

    def model make, model, params = {}
      @parameters = [:state, :year, :view, :submodel, :category]
      call_api "/#{make}/#{model}/count?", params
    end

  end
end
