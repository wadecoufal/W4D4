# == Schema Information
#
# Table name: albums
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  year       :integer          not null
#  studio     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  band       :string           not null
#

class Album < ApplicationRecord
  

end
