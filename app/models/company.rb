class Company < ActiveRecord::Base
    has_many :devs
    has_many :freebies
    def freebies
        Freebie.where(company_id: self.id)
    end
    def devs
        arr = freebies.map {|item|
        item.dev_id}
        Dev.find(arr)
    end
    def give_freebie(dev, item_name, value)
        Freebie.create(item_name: item_name, company_id: self.id, dev_id: dev.id, value: value)
    end
    def self.oldest_company
        Company.order(:founding_year).first
    end


end
