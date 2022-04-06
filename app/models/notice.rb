class Notice < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :desc
end
