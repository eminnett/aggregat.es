require 'grape'
require 'json'

module Aggregates
    class API < Grape::API
        prefix 'api'
        version 'v1'

        format :json

        namespace :test do
            get "/" do
              {:response => "testing"}
            end
        end
    end
end
