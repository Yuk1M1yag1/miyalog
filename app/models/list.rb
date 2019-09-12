# frozen_string_literal: true

class List < ApplicationRecord
  mount_uploader :image, ImagesUploader
  validates :name, presence: true
  validates :taste, presence: true
  validates :price, presence: true
  validates :service, presence: true
  validates :total, presence: true
end
