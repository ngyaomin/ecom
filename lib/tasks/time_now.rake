namespace :time_utils do
  desc "This should show current time"
  task :show_time => :environment do
    puts "The time is #{Time.now}"
  end
end
