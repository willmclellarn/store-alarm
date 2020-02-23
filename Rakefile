desc "This task is called by the Heroku cron add-on"
task :cron do
  require 'httparty'
require 'sinatra'
require 'irb'
require 'pony'

order_threshold = 5

lookback_minutes = 15
lookback_time = Time.new - (lookback_minutes * 60)
lookback_string = lookback_time.to_s

base_url = 'https://perfectketo.myshopify.com/admin/orders/count.json?access_token=d57032a8b908519445e7079759e72143'
final_url = base_url + '&created_at_min=' + lookback_string
response = HTTParty.get(final_url)
order_count = response["count"]

puts "we're at the mail step slow_day"

Pony.options = {
  :subject => "You're under threshold",
  :body => 'Hi - this shouldnt hit spam',
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'hello@cardinalecommerce.com',
    :password             => 'bzhamfyizylrgihx',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain"
  }
}

Pony.mail(:to => 'willmclellarn@gmail.com')
end