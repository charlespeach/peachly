class Site < ApplicationRecord
  def self.from_base36(base36_id)
    id = [base36_id.to_i(36).to_s(16)].pack 'H*'

    Site.find(id)
  end

  def peachly_url
    "localhost:3000/#{base36_id}"
  end

  def base36_id
    id.to_s.unpack('H*')[0].to_i(16).to_s 36
  end
end
