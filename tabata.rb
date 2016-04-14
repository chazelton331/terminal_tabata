#!/usr/bin/env ruby

class Tabata

  def initialize
    unless RUBY_PLATFORM =~ /darwin/
      raise "I cannot run on anything other than a Mac."
    end
  end

  def run!
    countdown

    8.times do |i|
      say "Set number #{i + 1}"
      workout_countdown
      rest_countdown
    end

    say "all done."
  end

  private

  def countdown
    %w(three two one).each do |word|
      say(word)
      sleep 1
    end

    say "go!"
  end

  def say(words)
    `say '#{words}'`
  end

  def sleep_and_beep
    sleep 1
    print "\a"
  end

  def workout_countdown
    20.times { sleep_and_beep }

    say "rest!"
  end

  def rest_countdown
    10.times { sleep_and_beep }

    say "go!"
  end

end

Tabata.new.run!
