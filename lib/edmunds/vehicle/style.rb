module Edmunds

  class Style < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/01_by_mmy/api-description.html
    def styles make, model, year, params = {}
      @parameters = [:state, :category, :submodel, :view]
      call_api "/#{make}/#{model}/#{year}/styles?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/03_count_by_mmy/api-description.html
    # http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/04_count_by_make_model/api-description.html
    # http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/05_count_by_make/api-description.html
    # http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/06_count/api-description.html
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

    # http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/02_by_id/api-description.html
    def style style_id
      @parameters = [:view]
      call_api "/styles/#{style_id}?"
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_style/v2/03_chrome/api-description.html
    def style_by_chromedata chromedata_id
      @parameters = []
      call_api "/partners/chrome/styles/#{chromedata_id}?"
    end

  end
  
end