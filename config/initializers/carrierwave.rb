CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_credentials = {
      :provider               => 'AWS',  # required
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],  # required
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],  # required
      :region                 => ENV['AWS_REGION']
    }
    config.fog_directory  = ENV['AWS_BUCKET']  # required
    config.fog_public  = true  # optional, defaults to true
end