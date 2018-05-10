class Membro < ApplicationRecord
	default_scope { where('apagado IS NULL')}

	has_many :dizimos, :dependent => :destroy

	def self.cron_delete
		delete_all
	end

end
