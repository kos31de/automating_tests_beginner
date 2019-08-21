class PlayerMock
  attr_accessor :connector

  def initialize
    @connect = Connector.new
  end

  def playTrack(track)
    # オブジェクトにアクセスできない. 実サービスに接続している.
    if !@connector.is_connected
      @connector.connect
    end

    return @connector.handle_request(track)
  end
end
