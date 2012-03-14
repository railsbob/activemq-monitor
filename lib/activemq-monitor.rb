require "activemq-monitor/version"
require 'stomp'
require 'json'

module Activemq
  class Monitor
    def initialize(url, channel)
      @url = URI.parse(url)
      @channel = channel
    end

    def start
      client.subscribe(@channel) do |message|
        p message.command
        p JSON.parse(message.body)
      end

      begin
        puts "Started monitoring '#{@channel}'. Enter ctrl+c when you're done"
        loop do
          sleep 5
        end
      rescue Interrupt => e
        puts "exiting.."
      end
    end

    def client
      @client ||= Stomp::Client.new(@url.user, @url.password, @url.host, @url.port, true)
    end
  end
end
