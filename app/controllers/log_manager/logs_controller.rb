module LogManager
  class LogsController < ApplicationController
    layout 'log_layout'

    def index
      @app_name = Rails.application.class.parent_name.underscore.humanize
      @environment = Rails.env
      log_file_path = "#{Rails.root}/log/#{@environment}.log"
      @file_size = File.size(log_file_path)
      @file_size = LogManager::Utils.human_file_size(@file_size)
      file = File.open(log_file_path)
      @file_data = file.readlines.map(&:chomp)
      file.close
    end
  end
end
