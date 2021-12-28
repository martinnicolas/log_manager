module LogManager
  class LogsController < ApplicationController
    def index
      @environment = Rails.env
      file = File.open("#{Rails.root}/log/#{@environment}.log")
      @file_data = file.readlines.map(&:chomp)
      file.close
    end
  end
end
