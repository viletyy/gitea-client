module Gitea 
  module Common 

    class Exception < RuntimeError
      attr_reader :message 

      def initialize(message)
        @message = message 
      end
    end 
  end # Common
end # Gitea