class Dev < ActiveRecord::Base
  has_many :freebies

  def freebies
    Freebie.where(dev_id: self.id)
  end
  def companies
    rows = freebies
    ids_arr = freebies.map { |item| item.company_id }
    Company.find(ids_arr)
  end
  def recieved_one(item_name)
    is_freebie = Freebie.where(dev_id: self.id, item_name: item_name)
    if is_freebie.length > 0
      return true
    else
      return false
    end
  end
  def self.give_away(dev, freebie)
    freebie.dev_id = dev.id
    freebie.save
    freebie
  end

end
