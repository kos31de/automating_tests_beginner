class Player

  def initialize(connector = Connector.new)
    @connector = connector
  end

  def playTrack
    if !@connector.is_connected
        @connector.connect
    end

    return @connector.handle_request(track)
  end
end
