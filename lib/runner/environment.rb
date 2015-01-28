module Runner
  class Environment
    def load!
      set_environment
      load_rails
      configure_logger
    end

    def set_environment
      ENV['RAILS_ENV'] ||= 'development'
      ENV['RACK_ENV'] ||= ENV['RAILS_ENV']
    end

    def load_rails
      begin
        require 'rails'
        if ::Rails.application.respond_to?(:eager_load)
          require File.expand_path('config/environment.rb')
          ::Rails.application.eager_load!
        else
          require File.expand_path('config/application.rb')
          ::Rails::Application.initializer 'runner.load_rails' do
            ::Rails.application.config.eager_load = true
          end
          require File.expand_path('config/environment.rb')
        end
      rescue LoadError
      end
    end

    def configure_logger
      if defined?(Rails) && ENV['LOGFILE']
        Rails.logger = Logger.new(ENV['LOGFILE'])
      end
    end
  end
end
