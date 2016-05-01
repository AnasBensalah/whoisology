require_relative "whoisology/version"
require 'rest-client'
require "json"

module Whoisology
  class Api

    def initialize(api_key=nil, options={})
      @base_uri = "https://whoisology.com/api"
      @api_key = api_key

      # TODO - allow proxy configuration here...

      # if we weren't passed a config
      unless @api_key
        # check to see if a config file exists
        config_file_path = "#{File.dirname(__FILE__)}/../config/config.json"
        if File.exist? config_file_path
          config = JSON.parse(File.open(config_file_path,"r").read)
          @api_key = config["api_key"]
        else
          raise "Unable to continue... no api key!"
        end
      end
    end

    def credits
      JSON.parse RestClient.get "#{@base_uri}?request=credits&auth=#{@api_key}"
    end

    def test
      raise "not implemented!"
      #JSON.parse RestClient.get "#{@base_uri}?request=test&&level=admin&field=email&domain={Domain}&auth=#{@api_key}"
    end

    def ping
      JSON.parse RestClient.get("#{@base_uri}?request=ping&level=admin&field=email&value=dns­admin@google.com&auth=#{@api_key}")
    end

  end
end
