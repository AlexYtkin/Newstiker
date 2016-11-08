class Article
  include Mongoid::Document
  include Mongoid::Paperclip

  validates :title, presence: true
  validates :description, presence: true

  has_mongoid_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      all
    end
  end

  field :title, type: String
  field :description, type: String
end
