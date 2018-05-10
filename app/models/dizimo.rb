class Dizimo < ApplicationRecord
  belongs_to :membro

  def self.demembro(membro_id)
  	where('membro_id = ?', membro_id)
  end

end
