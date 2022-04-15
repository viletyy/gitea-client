require 'logger'

module Gitea
  module Common 

    ## 
    # Logging support
    # @example 
    #   include Logging
    #   logger.info(xxx)

    module Logging 

      MAX_NUM_LOG = 100
      ROTATE_SIZE = 10 * 1024 * 1024

      # level = Logger::DEBUG | Logger::INFO | Logger::ERROR | Logger::FATAL
      def self.set_log_level(level)
        Logging.logger.level = level
      end

      # 设置日志输出的文件
      def self.set_log_file(file)
        @log_file = file
      end

      # 获取logger
      def logger 
        Logging.logger 
      end

      private 

      def self.logger 
        unless @logger 
          @log_file ||= ENV["GITEA_CLIENT_LOG_PATH"]
          @logger = Logger.new(
            @log_file, MAX_NUM_LOG, ROTATE_SIZE)
          @logger.level = get_env_log_level || Logger::INFO
        end
        @logger
      end

      def self.get_env_log_level
        return unless ENV["GITEA_CLIENT_LOG_LEVEL"]
        case ENV["GITEA_CLIENT_LOG_LEVEL"].upcase
        when "DEBUG"
          Logger::DEBUG
        when "WARN"
          Logger::WARN
        when "ERROR"
          Logger::ERROR
        when "FATAL"
          Logger::FATAL
        when "UNKNOWN"
          Logger::UNKNOWN
        end
      end

    end
  end # Common
end # Gitea