desc "This task is called by the Heroku cron add-on"
task :cron do
  require 'sinatra'
  require 'httparty'

  order_threshold = 5

  lookback_minutes = 15
  lookback_time = Time.new - (lookback_minutes * 60)
  lookback_string = lookback_time.to_s

  base_url = 'https://perfectketo.myshopify.com/admin/orders/count.json?access_token=d57032a8b908519445e7079759e72143'
  final_url = base_url + '&created_at_min=' + lookback_string
  response = HTTParty.get(final_url)
  order_count = response["count"]

  puts order_count

  if order_count < order_threshold
    puts "You better check your store"
  else puts "Your store is probably OK :)"
  end 
end