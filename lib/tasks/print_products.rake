namespace :products do
  desc "Prints all the available products with quantity left in csv"
  task :print_csv => :environment do
    puts "Product Name,Inventory_available"
    Product.all.sort_by each do |product|
      puts "#{product.name},#{product.inventory_available}"
    end
  end
end
