class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :options, :dependent => :destroy
  accepts_nested_attributes_for :options,
      :reject_if => ->(a) { a[:text].blank? },
      :allow_destroy => true
end