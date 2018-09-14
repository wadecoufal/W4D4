# == Schema Information
#
# Table name: tracks
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  lyrics      :text
#  album_id    :integer          not null
#  bonus_track :boolean          default(FALSE)
#  ord         :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Track < ApplicationRecord
  validates :title, :album_id, :ord, :bonus_track, presence: true

  belongs_to :album,
  foreign_key: :album_id,
  class_name: :Album

  has_one :band,
  through: :album,
  source: :band
end
