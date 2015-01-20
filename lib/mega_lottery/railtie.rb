require 'rails'
require 'mega_lottery/helper'


module MegaLottery
  class Railtie < Rails::Railtie 
    initializer "mega_lottery.action_view" do
      ActiveSupport.on_load(:action_view) do
        include MegaLottery::Helper
      end
    end
    
    rake_tasks do
      load "mega_lottery/tasks/mega_lottery.rake"
    end
  end
end