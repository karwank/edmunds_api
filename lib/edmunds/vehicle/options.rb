module Edmunds

  class Option < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_colors_and_options/v2/01_options_by_style/api-parameters.html
    def options style_id, params = {}
      @parameters = [:category]
      call_api "/styles/#{style_id}/options?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_colors_and_options/v2/02_options_id/api-parameters.html
    def option option_id
      @parameters = []
      call_api "/options/#{option_id}?", params
    end

  end

end