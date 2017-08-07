require 'open-uri'

module TorGuard
  @last_refreshed = nil
  @exit_ips = {}

  def self.exit_ips
    self.lazy_refresh
    @exit_ips.dup
  end

  def self.exit_node?(ip_address)
    self.lazy_refresh
    @exit_ips.include?(ip_address)
  end

  def self.refresh!
    new_exit_ips = {}

    response = open(@configuration.exit_address_url)

    status, _ = response.status

    if status == '200'
      response.read.split("\n").each do |line|
        next if line.start_with?('#')

        new_exit_ips[line] = true
      end

      @exit_ips = new_exit_ips
      @last_refreshed = Time.now
    end
  end

  def self.lazy_refresh
    if @last_refreshed.nil? ||
        (Time.now - @last_refreshed) >= @configuration.refresh_interval
      self.refresh!
    end
  end
end
