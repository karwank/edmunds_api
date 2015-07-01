module Edmunds
  class Media < Api
    
    def initialize
      super
      @endpoint = "/api/media/v2"
    end

  end
end

require 'edmunds/media/photo'