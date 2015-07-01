module Edmunds

  class Style < Vehicle

    def styles make, model, year, params = {}
      @parameters = [:state, :category, :submodel, :view]
      call_api "/#{make}/#{model}/#{year}/styles?", params
    end

    def styles_count make = nil, model = nil, year = nil, params = {}
      @parameters = [:state]
      url = ""
      unless make.blank?
        url += "/#{make}"
        unless model.blank?
          url += "/#{model}"
          unless year.blank?
            url += "/#{year}"
          end
        end
      end
      call_api "#{url}/styles/count?", params
    end

    def style style_id
      @parameters = [:view]
      call_api "/styles/#{style_id}?"
    end

    def style_by_chromedata chromedata_id
      @parameters = []
      call_api "/partners/chrome/styles/#{chromedata_id}?"
    end

  end
  
end