# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  validates(:name, presence: true)

#  def filmography
#    Movie.where({:director_id => self.id})
#  end

has_many(:filmography, foreign_key: "director_id", class_name: "Movie")


end
