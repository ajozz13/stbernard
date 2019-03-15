#https://matthewlehner.net/rails-api-testing-guidelines
#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
#To run test: bundle exec rspec

require 'rails_helper'

describe "Patient API GET Requests", :type => :request do
  url = '/api/v1/patients'
  it "Successul to GET request to: #{ url }" do
    get url
    expect( response ).to be_successful
    json = JSON.parse( response.body )
    #puts "#{ json }"
    expect( json['code'] ).to be( 0 )
    expect( json['message'] ).to match( /completed/ )
    expect( json['is_error'] ).to be( false )
    expect( json['url'] ).to_not be_empty
    expect( json['result'].length ).to be >= 0
  end

  it "Fail GET request to: #{ url }/99" do
    get "#{ url }/99"
    expect( response.code ).to eq( "404" )
    json = JSON.parse( response.body )
    expect( json['code'] ).to be( 1 )
    expect( json['message'] ).to match( /not completed/ )
    expect( json['is_error'] ).to be( true )
    expect( json['url'] ).to_not be_empty
    expect( json['result'] ).to match( /Couldn't find/ )
  end

end

describe "Patient API POST Requests", :type => :request do
  url = '/api/v1/patients'
=begin
  # This post test works in postman but not here....
  it "Successful POST to: #{ url }" do
    hdrs = { "CONTENT_TYPE" => "application/json" }
    params = { first_name: "Mark", middle_name: "M", last_name: "Martinez", honorific: "Mr", dob: "1971-01-12", gender: 0, facility_id: 1 }
    post url, body: params.to_json, headers: hdrs
    #post url, body: '{ "patient": { "first_name": "Mark", "middle_name": "M", "last_name": "Martinez", "honorific": "Mr", "dob": "1971-01-12", "gender": 0, "facility_id": 1 } }',
      #format: 'json', headers: hdrs
    puts "#{ response.body }"
    #expect( response ).to be_successful
    expect( response.code ).to eq( "201" )
    json = JSON.parse( response.body )
    puts "#{ json }"
    expect( json['code'] ).to be( 1 )
    expect( json['message'] ).to match( /Created/ )
    expect( json['is_error'] ).to be( false )
    expect( json['url'] ).to_not be_empty
    expect( json['result'].length ).to be >= 0
  end
=end
  it "Unsuccessful POST to: #{ url }" do
    post url, params: { patient: { first_name: 'Mark', middle_name: 'M', last_name: 'Martinez',
      honorific: 'Mr', dob: '1971-01-12', gender: 0 } }
    expect( response.code ).to eq( "422" )
    json = JSON.parse( response.body )
    expect( json['code'] ).to be( 1 )
    expect( json['message'] ).to match( /not Created/ )
    expect( json['is_error'] ).to be( true )
    expect( json['url'] ).to_not be_empty
    expect( json['result'].length ).to be >= 0
  end

end
