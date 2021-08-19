class Company < ActiveRecord::Base
  has_many :freebies

  def freebies
    Freebie.where(company_id: self.id)
  end

  def devs
    rows = freebies
    id_arr = rows.map { |item| item.dev_id }
    Dev.find(id_arr)
  end
  def give_freebie(dev, item_name, value)
    Freebie.create(item_name: item_name, value: value, dev_id: dev.id, company_id: self.id)
  end
  def self.oldest_company
    Company.order(:founding_year).first
  end
end
