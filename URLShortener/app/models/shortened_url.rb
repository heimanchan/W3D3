# == Schema Information
#
# Table name: shortened_urls
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  long_url   :string
#  short_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'securerandom'

class ShortenedUrl < ActiveRecord::Base
  def self.random_code
    SecureRandom.urlsafe_base64(21) 
  end


  def self.factory(user, long_url)
    self.new({'user_id': user.id, 'long_url': long_url,'short_url': ShortenedUrl.random_code})
  end
end
