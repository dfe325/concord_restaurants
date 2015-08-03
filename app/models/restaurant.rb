class Restaurant < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :common_name, presence: true
  validates :scientific_name, presence: true

  # paginates_per 20

  # def self.search(search)
  #   where("common_name ILIKE :search OR scientific_name ILIKE :search",
  #        search: "%#{search}%")
  # end
end
