module Edmunds

  class Photo < Media

    # shottype:
    # FQ  Front Quarter view of entire vehicle, usually from the driver’s side
    # RQ  Rear Quarter view of entire vehicle, from either the driver or passenger’s side
    # I Forward Interior Shot showing dash, seats and windshield
    # RI  Interior Shot showing rear seats. Can also be taken from outside of vehicle.
    # S Profile view of entire vehicle; usually left-hand side
    # CARGO Shot of vehicle’s trunk, bed, or other primary cargo area
    # E Shot of vehicle’s entire engine bay, usually from directly above
    # W Shot of vehicle’s entire wheel, usually the front-left
    # D Shot of vehicle’s entire dashboard, usually taken from the rear-int
    # CC  Shot of vehicle’s center console, usually taken from the rear-int
    # F Front end of vehicle. Shot includes rest of body as well, but not in primary focus
    # R Rear end of vehicle. Shot includes rest of body as well, but not in primary focus
    # DETAIL  Detail can be anything interior that has a specific need for attention
    # B Close-up of an exterior emblem on the vehicle body. Trim/Engine/Packages, etc.
    # O Any exterior shot that does not fit into any other type
    # PROFILE Additional profile/side view of entire vehicle, from driver or passenger’s side

    # http://developer.edmunds.com/api-documentation/media/photos/v2/03_photos_by_make_model/api-description.html
    # http://developer.edmunds.com/api-documentation/media/photos/v2/04_photos_by_make_model_year/api-description.html
    def photos make, model, year = nil, params = {}
      @parameters = [:category, :view, :provider, :width, :height, :shottype, :pagenum, :pagesize]
      url = "/#{make}/#{model}"
      url += "/#{year}" unless year.blank?
      call_api "#{url}/photos?", params
    end

    # http://developer.edmunds.com/api-documentation/media/photos/v2/02_photos_by_style_id/api-description.html
    def photos_by_style style_id, params = {}
      @parameters = [:category, :view, :provider, :width, :height, :shottype, :pagenum, :pagesize]
      call_api "/styles/#{style_id}/photos?", params
    end

    def old_photos_by_style style_id, params = {}
      @parameters = []
      @endpoint = "/v1/api"
      call_api "/vehiclephoto/service/findphotosbystyleid?styleId=#{style_id}&", params
    end

  end
  
end