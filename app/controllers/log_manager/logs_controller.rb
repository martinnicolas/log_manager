module LogManager
  class LogsController < ApplicationController
    layout 'log_layout'

    def index
      @app_name = Rails.application.class.parent_name.underscore.humanize
      @environment = Rails.env
      file = File.open("#{Rails.root}/log/#{@environment}.log")
      @file_data = file.readlines.map(&:chomp)
      file.close
    end
  end
end
