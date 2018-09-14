# == Schema Information
#
# Table name: albums
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  year       :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band_id    :integer          not null
#  studio     :string           default("Studio")
#

class Album < ApplicationRecord
  validates :title, :year, :studio, :band, presence: true

  belongs_to :band,
  foreign_key: :band_id,
  class_name: :Band

  has_many :tracks,
  foreign_key: :album_id,
  class_name: :Track
end
