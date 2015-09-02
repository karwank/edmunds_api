require 'rest_client'

module Edmunds
  class Api

    attr_reader :api_base_url, :api_key, :image_base_url, :format

    def initialize
      if set_key
        @api_base_url = "https://api.edmunds.com"
        @image_base_url = "http://media.ed.edmunds-media.com"
        @format = "fmt=json&api_key=#{@api_key}"
      else
        return @errors
      end
    end

    def set_key
      @api_key = ENV["EDMUNDS_VEHICLE"] || Rails.configuration.edmunds_vehicle_api_key
    rescue
      @errors = "You need to set your Edmunds Vehicle API key first"
      return false
    end

    def call_api url, params = {}
      url = @api_base_url + @endpoint + url + parse_params(params) + @format
      resp = RestClient.get(url)
      JSON.parse(resp)
    end

    def parse_params params
      parameters = ""
      @parameters.each do |parameter|
        unless params[parameter].blank?
          parameters += "#{parameter.to_s}=#{URI.escape(params[parameter].to_s)}&"
        end
      end
      parameters
    end
  end
  
end