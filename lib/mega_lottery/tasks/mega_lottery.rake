namespace :mega_lottery do
  desc "Generate a random lottery drawing"
  task :draw do
    puts MegaLottery::Drawing.new.draw
  end
end