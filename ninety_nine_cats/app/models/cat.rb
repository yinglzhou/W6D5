# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#
class Cat < ApplicationRecord
    CAT_COLORS = ['yellow', 'green', 'purple']
    GENDERS = ['M', 'F']

    validates :birth_date, :color, :name, :sex, presence: true
    validates :color, inclusion: { in: CAT_COLORS }
    validates :gender, inclusion: { in: GENDERS }

end
