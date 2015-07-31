module Edmunds
  class Vehicle < Api
    
    def initialize
      super
      @endpoint = "/api/vehicle/v2"
    end

  end
end

require 'edmunds/vehicle/make'
require 'edmunds/vehicle/model'
require 'edmunds/vehicle/model_year'
require 'edmunds/vehicle/style'
require 'edmunds/vehicle/color'