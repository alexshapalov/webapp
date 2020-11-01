class Recipe < ApplicationRecord
  def self.get_list
    ContentfulClient.new.client.entries(content_type: 'recipe')
  end

  def self.get_one(id)
    ContentfulClient.new.client.entry(id).fields
  end
end
