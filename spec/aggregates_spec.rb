require 'coveralls'
Coveralls.wear!

require "aggregates"
require "rack/test"

describe Aggregates::API do
    include Rack::Test::Methods

    def app
        Aggregates::API
    end

    describe Aggregates::API do
        describe "GET /api/v1/test.json" do
            it "Should return a test response" do
                get "/api/v1/test.json"
                last_response.status.should == 200
                JSON.parse(last_response.body)["response"].should == "testing"
            end
        end
    end
end
