class PagesController < ApplicationController

  def get()
    Rails.cache.fetch(:expires => 1.hour) do
      HTTParty.get("https://api.airtable.com/v0/#{app[:Rails]}/Table%201?api_key=#{ENV['AIRTABLE_API_KEY']}")
    end
  end

  def app
    {
      "Rails": "appOxj990ARAtO1pS",
      "Other Worksheet": "other key here"
    }
  end



  def index
    # @client = Airtable::Client.new(ENV['AIRTABLE_API_KEY'])
    @table = get
    @records= @table['records']

    @bill = @records.first

  end

end
