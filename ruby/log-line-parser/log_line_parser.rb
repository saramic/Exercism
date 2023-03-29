# frozen_string_literal: true

class LogLineParser
  attr_accessor :message, :log_level

  def initialize(line)
    @line = line
    matches = /\[(?<level>.*)\]: (?<rest>.*$)/.match(line)
    @message = matches[:rest].strip
    @log_level = matches[:level].downcase
  end

  def reformat = format('%<message>s (%<level>s)', message:, level: log_level)
end
