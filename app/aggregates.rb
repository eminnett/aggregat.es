require 'grape'

module Aggregates
  class API < Grape::API

    version 'v1', using: :header, vendor: 'twitter'
    default_format :json

    desc "Test method."
    get "/test" do
      {response: "testing"}
    end
  end
end
