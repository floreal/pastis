# == Schema Information
#
# Table name: snippets
#
#  id         :integer         not null, primary key
#  content    :string(255)
#  language   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Snippet < ActiveRecord::Base
  attr_accessible(:language, :content) 
  
  def self.supported_languages
    Pastis::Application.config.supported_languages
  rescue
    ['ruby', 'java', 'php']
  end
  
  validates :language, :inclusion => { :in => supported_languages }
  validates :content, :presence => true
end
