require 'lock_jar'
require "silvio_core/version"

module SilvioCore
  # Your code goes here...
  def self.loadHelper
    lockfile = File.expand_path('../../Jarfile.lock', __FILE__)
    jars = LockJar.load(lockfile)
    puts "loaded jars are #{jars}"
  end
end
