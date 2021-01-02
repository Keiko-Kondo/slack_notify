require "slack-notify"
require 'clockwork'
require 'active_support/time'
# ここに、slackにメッセージを送る処理を書き込む。
sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
sample.notify("This is a test.")


module Clockwork
  sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')

  every(3.minutes, 'notify') do
    sample.notify("This is a test.")
  end
end

# handler do |job|
#   puts "Running #{job}"
# end
