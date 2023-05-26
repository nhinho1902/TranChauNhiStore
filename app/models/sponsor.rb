class Sponsor < ApplicationRecord
  has_one_attached :Image_File
  has_one_attached :Contract_File
end
