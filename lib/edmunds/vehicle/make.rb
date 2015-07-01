module Edmunds

  class Make < Vehicle

    def makes params = {}
      @parameters = [:state, :year, :view]
      call_api "/makes?", params
    end

    def makes_count params = {}
      @parameters = [:state, :year, :view]
      call_api "/makes/count?", params
    end

    def make make, params = {}
      @parameters = [:state, :year, :view]
      call_api "/#{make}?", params
    end

  end

end
