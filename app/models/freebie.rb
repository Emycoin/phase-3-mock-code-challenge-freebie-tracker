class Freebie < ActiveRecord::Base
  belongs_to :devs
  belongs_to :companies

  def dev
    Dev.find(self.dev_id)
  end

  def company
    Company.find(self.company_id)
  end

  def print_details
    devs_name = dev.name
    freebie_item_name = self.name
    company_name = company.name
    puts "#{devs_name} owns a #{freebie_item_name} from #{company_name}"
  end
end
