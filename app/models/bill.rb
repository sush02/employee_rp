class Bill < ApplicationRecord
  validates :amount, :bill_type, presence: true
  #validates_inclusion_of :bill_type, :in => %w(food travel others)
  
  enum bill_type: { food: "food", travel: "travel", others: "others" } #can use enum when we use active record
  
  belongs_to :submitted_by, class_name: "Employee", foreign_key: "submitted_by"
end
