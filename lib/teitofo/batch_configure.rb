module TeiToFo
  class BatchConfigure

    def initialize
      yield self if block_given?
    end

    attr_accessor :job_name, :corpora_path, :logo_path

    def job_name
      @job_name || 'test'
    end

    def corpora_path
      @corpora_path || Pathname.new('corpora')
    end

    def logo_path
      @log_path || Pathname.new('logo.png')
    end
    
  end
end
