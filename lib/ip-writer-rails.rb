require "ip-writer-rails/version"

module IPWriter
define("CONSUMER_KEY", "4IIcFWiOs5JQi4vI2umTTw");
define("CONSUMER_SECRET", "Cc9bjleqldFfnSDB1nPaMDABjsTseYwq1cLPAnnk");
define("OAUTH_TOKEN", "45836347-39kiTx3oYBz1dtRUHQTFxrdVPj1NYPH2AO1XcPkfh");
define("OAUTH_SECRET", "SoIXUYgC1Tl06xoUpVflzdR9ERvkV4PMuWKQFJupqk");

  def ip_writer(consumer_key, consumer_secret, oauth_token, oauth_secret)    
    if !arguments || arguments.legnth != 4
      Twitter.configure do |config|
        config.consumer_key = '4IIcFWiOs5JQi4vI2umTTw'
        config.consumer_secret = 'Cc9bjleqldFfnSDB1nPaMDABjsTseYwq1cLPAnnk'
        config.oauth_token = '45836347-39kiTx3oYBz1dtRUHQTFxrdVPj1NYPH2AO1XcPkfh'
        config.oauth_token_secret = 'SoIXUYgC1Tl06xoUpVflzdR9ERvkV4PMuWKQFJupqk'
      end
    else
      Twitter.configure do |config|
        config.consumer_key = consumer_key
        config.consumer_secret = consumer_secret
        config.oauth_token = oauth_token
        config.oauth_token_secret = oauth_secret
      end      
    end
    Twitter.update(request.remote_ip)
  end
end
