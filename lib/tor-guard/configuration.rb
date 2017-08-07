module TorGuard
  class Configuration
    attr_accessor :exit_address_url, :refresh_interval

    def initialize
      # Refresh interval is in seconds, default: 15 minutes
      @refresh_interval = 60 * 15

      @exit_address_url = 'https://check.torproject.org/cgi-bin/TorBulkExitList.py?ip=1.1.1.1'
    end
  end

  @configuration = Configuration.new

  def self.configure(&block)
    block.call(@configuration)
  end
end
