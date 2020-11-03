class Testresult < ApplicationRecord
  include Discard::Model
  default_scope -> { kept }
  belongs_to :user, optional: true
  validates :name1,  presence: true, length: { maximum: 126 }
  validates :jap_result, :math_result, :eng_result, :soci_result, :sci_result, presence: true, inclusion: { in: 1..100 }, format: { with: /\A[0-9]+\z/ }
end
