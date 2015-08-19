class Option < ActiveRecord::Base
  belongs_to :question

  enum political_party: [ :conservative, :liberal, :ndp, :green ]

  def political_party_enum
    self.class.political_parties.to_a
  end

  def political_party= value
    if value.kind_of?(String) and value.to_i.to_s == value
      super value.to_i
    else
      super value
    end
  end
end