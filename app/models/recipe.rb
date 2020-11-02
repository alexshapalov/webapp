class Recipe < ApplicationRecord
  def self.all
    ContentfulClient.new.client.entries(content_type: 'recipe')
  end

  def self.one(id)
    ContentfulClient.new.client.entry(id).fields
  end
end
