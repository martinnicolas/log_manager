module LogManager
  class LogsController < ApplicationController
    def index
      file = File.open("#{Rails.root}/log/#{Rails.env}.log")
      @file_data = file.readlines.map(&:chomp)
      file.close
    end
  end
end
