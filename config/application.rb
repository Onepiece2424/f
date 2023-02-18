require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module AsyncMailerApp
  class Application < Rails::Application
    config.load_defaults 6.1

    # Active JobのバックエンドにSidekiqを使用することを宣言
    config.active_job.queue_adapter = :sidekiq

    # タイムゾーンの設定
    config.active_record.default_timezone = :local
    config.time_zone = 'Tokyo'
  end
end
