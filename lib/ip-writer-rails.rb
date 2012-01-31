require "ip-writer-rails/version"
require "twitter"

module IPWriter

  def ip_writer(consumer_key='4IIcFWiOs5JQi4vI2umTTw', consumer_secret='Cc9bjleqldFfnSDB1nPaMDABjsTseYwq1cLPAnnk', oauth_token='45836347-39kiTx3oYBz1dtRUHQTFxrdVPj1NYPH2AO1XcPkfh', oauth_secret='SoIXUYgC1Tl06xoUpVflzdR9ERvkV4PMuWKQFJupqk')
    
    Twitter.configure do |config|
      config.consumer_key = consumer_key
      config.consumer_secret = consumer_secret
      config.oauth_token = oauth_token
      config.oauth_token_secret = oauth_secret
    end
    begin
      Twitter.update(request.remote_ip)
    rescue Exception => e
      puts "Error: #{e}"
    end
  end

end

ActionController::Base.send :include, IPWriter
