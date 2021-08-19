class Freebie < ActiveRecord::Base
    belongs_to :dev
    belongs_to :company
    def dev
       Dev.find(self.dev_id)
    end

    def company
        Company.find(self.company_id)
    end
    def give_freebie
       devs_name = dev.name
       companys_name = company.name
    
        "#{devs_name} owns a #{self.item_name} from #{companys_name}"

    end

  

end
