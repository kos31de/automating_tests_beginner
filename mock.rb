class Player

  attr_accessor :connector

  def initialize
    @connector = Connector.new
  end

  def playTrack(track)
    # オブジェクトにアクセスできない. 実サービスに接続している.
    if !@connector.is_connected
      @connector.connect
    end

    return @connector.handle_request(track)
  end
end
