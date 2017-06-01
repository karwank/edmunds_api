module Edmunds
  class Dealership < Api
    
    def initialize
      super
      @endpoint = "/api/dealer/v2"
    end

  end
end

require 'edmunds/dealership/dealer'