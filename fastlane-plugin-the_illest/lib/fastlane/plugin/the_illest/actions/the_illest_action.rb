require 'fastlane/action'
require_relative '../helper/the_illest_helper'

module Fastlane
  module Actions
    class TheIllestAction < Action
      def self.run(params)


        require "open-uri"
        open("https://www.mynewsspot.com/wp-content/uploads/2019/01/Donald-Trump-Memes-1100x500.jpg") {|f|
        File.open("trump.jpg","wb") do |file|
         file.puts f.read
        end
        }


      end

      def self.description
        "Just print the illest"
      end

      def self.authors
        ["Bakhtar Sobat"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Non of your business"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "THE_ILLEST_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
