class Node < ApplicationRecord
  belongs_to :parent, class_name: Node.name, optional: true
  has_many :children, class_name: Node.name, foreign_key: :parent_id, dependent: :destroy

  validates :value, presence: true
end
