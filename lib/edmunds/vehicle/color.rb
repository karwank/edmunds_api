module Edmunds

  class Color < Vehicle

    # http://developer.edmunds.com/api-documentation/vehicle/spec_colors_and_options/v2/03_colors_by_style/api-parameters.html
    def colors style_id, params = {}
      @parameters = [:category]
      call_api "/styles/#{style_id}/colors?", params
    end

    # http://developer.edmunds.com/api-documentation/vehicle/spec_colors_and_options/v2/04_color_id/api-description.html
    def color color_id
      @parameters = []
      call_api "/colors/#{color_id}?", params
    end

  end

end