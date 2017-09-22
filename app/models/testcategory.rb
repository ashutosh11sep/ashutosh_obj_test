class Testcategory < ApplicationRecord
 has_many :tests

 accepts_nested_attributes_for :tests
end
