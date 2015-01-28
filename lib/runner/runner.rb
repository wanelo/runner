require 'runner/environment'

module Runner
  class Runner
    attr_reader :args

    def initialize(args)
      @args = args
    end

    def run
      handle_signals!
      Environment.new.load!
      eval(args.join(' '))
    end

    def handle_signals!
      Signal.trap('INT') { exit }
      Signal.trap('TERM') { exit }
    end
  end
end
