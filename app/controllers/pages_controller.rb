class PagesController < ApplicationController

  def worksheep
    {
      "Rails": "appOxj990ARAtO1pS",
      "Other Worksheet": "other key here"
    }
  end

  def index
    # @client = Airtable::Client.new(ENV['AIRTABLE_API_KEY'])
    @table = HTTParty.get("https://api.airtable.com/v0/#{app['Rails']}/Table%201?api_key=#{ENV['AIRTABLE_API_KEY']}")
    @records= @table['records']
    # raise 'hi'
    # @records.offset

    @bill = @records.first

  end

end
