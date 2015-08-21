class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :options, :dependent => :destroy
  accepts_nested_attributes_for :options,
      :reject_if => ->(a) { a[:text].blank? },
      :allow_destroy => true

  enum type: [ :selection, :rank ]

  validates_inclusion_of :type, :in => Question.types

  def type_enum
    self.class.types.to_a
  end

  def type= value
    if value.kind_of?(String) and value.to_i.to_s == value
      super value.to_i
    else
      super value
    end
  end
end