```minitest
def setup
  @permit = permits(:saskatoon)
end

test 'HTTP GET' do
  get permit_path(:id => @permit.id, :format => :json)
  assert response.body.to_s.include? 'Saskatoon'
  assert_response :success # 200 OK
end
```
* setup(minitest)はbefore(Rspec)と同じ。
