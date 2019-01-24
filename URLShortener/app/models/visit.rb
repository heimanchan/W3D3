# == Schema Information
#
# Table name: visits
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  short_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visit < ApplicationRecord
  def self.record_visit!(user, shortened_url)
    Visit.new({'user_id': user.id, 'short_id': shortened_url.id})
  end

  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :url,
    primary_key: :id,
    foreign_key: :short_id,
    class_name: :ShortenedUrl
end


# ID | USER ID | SHORT ID 
# -----------------------