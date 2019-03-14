#https://matthewlehner.net/rails-api-testing-guidelines
#https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
#To run test: bundle exec rspec

require 'rails_helper'

describe "Patient API", :type => :request do
  it 'responds to GET request' do
    get '/api/v1/patients'
    expect( response ).to be_successful
    json = JSON.parse( response.body )
    #puts "#{ json }"
    expect( json['code'] ).to be( 0 )
    expect( json['message'] ).to match( /completed/ )
    expect( json['is_error'] ).to be( false )
    expect( json['url'] ).to_not be_empty
    expect( json['result'].length ).to be >= 0
  end

  it 'Failure response to GET request' do
    get '/api/v1/patients/99'
    expect( response.code ).to eq( "404" )
    json = JSON.parse( response.body )
    expect( json['code'] ).to be( 1 )
    expect( json['message'] ).to match( /not completed/ )
    expect( json['is_error'] ).to be( true )
    expect( json['url'] ).to_not be_empty
    expect( json['result'] ).to match( /Couldn't find/ )
  end

end
