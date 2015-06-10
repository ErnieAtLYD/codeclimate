require "rainbow"

module CC
  module CLI
    class Help < Command
      def run
        say "Usage: codeclimate COMMAND ...\n\nAvailable commands:\n"
        commands.each do |command|
          say "    #{command}"
        end
      end

      private

      def commands
        [
          "analyze [-f format]",
          "console",
          "engines:enable #{underline('engine_name')}",
          "engines:install",
          "engines:list",
          "help",
          "init",
          "validate-config",
          "version"
        ].freeze
      end

      def underline(string)
        return Rainbow.new.wrap(string).underline
      end
    end
  end
end