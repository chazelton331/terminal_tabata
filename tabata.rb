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
      workout_countdown
      rest_countdown
    end

    say "all done."
  end

  private

  def countdown
    %w(3 2 1).each do |word|
      print "#{word} "
      say(word)
      sleep 1
    end

    puts

    say "begin"
  end

  def say(words)
    `say '#{words}'`
  end

  def sleep_and_print
    sleep 1
    print '.'
  end

  def workout_countdown
    20.times { sleep_and_print }

    puts

    say "rest"
  end

  def rest_countdown
    10.times { sleep_and_print }

    puts

    say "work"
  end

end

Tabata.new.run!
