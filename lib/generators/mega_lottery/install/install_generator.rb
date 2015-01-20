module MegaLottery
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc <<DESC 
Description:
    Copy MegaLottery configuration to an initializer.
DESC
      
      def create_configuration
        template "mega_lottery.rb", "config/initializers/mega_lottery.rb"
      end
    end
  end
end