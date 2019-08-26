class StubWeatherForecaster

  # スタブは高コストな実際の操作をハードコードで単純化されたダミーで置き換えるだけ。
  def predict_weather(city)
    if city == "Hawaii"
      return 10
    elsif city == "Stockholm"
      return 0
    elsif city == "Winnipeg"
      return -20
    end
  end
end

# モックはデータを返すだけでなく、テストを通じて操作、監視される対象になる。
# 例えば以下のような気象予報サービスにハワイで氷点下の温度を観測した場合をシュミレートさせるとか
@mockForecaster.expects(:predict_weather).with("Hawaii").returns(-10)
# 気温が氷点下まで下がったら、特殊な温度計算処理が呼ばれることを検証するとか。
@mockForecaster.expects(:calculate_cold_humidity)
