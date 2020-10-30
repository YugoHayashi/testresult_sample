class Testresult < ApplicationRecord
  belongs_to :user
  validates :name1,  presence: true, length: { maximum: 126 }
  validates :jap_result, :math_result, :eng_result, :soci_result, :sci_result, inclusion: { in: 1..100 }
  validates :jap_result, :math_result, :eng_result, :soci_result, :sci_result, format: { with: /\A[0-9]+\z/ }
end
