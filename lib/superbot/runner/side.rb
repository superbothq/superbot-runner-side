require_relative "side/version"

module Superbot
  module Runner
    module Side
      class Error < StandardError; end

      def self.run(recording)
        puts 'Loading test...'
        begin
          k = Kommando.run "selenium-side-runner --server http://localhost:4567/wd/hub #{recording}"
          puts k.out
        rescue Kommando::Error => error
          puts error.message
          if error.message == "Command 'selenium-side-runner' not found"
            puts "To install runner try:", "npm install -g selenium-side-runner"
          end
        end
      end
    end
  end
end
