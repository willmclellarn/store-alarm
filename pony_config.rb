Pony.options = {
  :subject => "You're under threshold",
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'hello@cardinalecommerce.com',
    :password             => ENV["bggVXzC3s3Z!vxZwDNaMuMdHYexMZX6Y"],
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain"
  }
}