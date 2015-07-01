module Edmunds

  class ModelYear < Vehicle

    def model_years make, model, params = {}
      @parameters = [:state, :view, :submodel, :category]
      call_api "/#{make}/#{model}/years?", params
    end

    def model_years_count make, model, params = {}
      @parameters = [:state, :view]
      call_api "/#{make}/#{model}/years/count?", params
    end

    def model_year make, model, year, params = {}
      @parameters = [:state, :view, :submodel, :category]
      call_api "/#{make}/#{model}/#{year}?", params
    end

  end
end