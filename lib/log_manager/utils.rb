module LogManager
  class Utils
    def self.human_file_size(bytes)
      size_unity = 'B'
      if bytes > 1024
        bytes /= 1024.to_f
        size_unity = 'KB'
      end
      if bytes > 1024
        bytes /= 1024.to_f
        size_unity = 'MB'
      end
      if bytes > 1024
        bytes /= 1024.to_f
        size_unity = 'GB'
      end
      return "#{bytes.round(2)} #{size_unity}"
    end
  end
end
