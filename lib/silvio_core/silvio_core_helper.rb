require 'lock_jar'

lockfile = File.expand_path('../../../Jarfile.lock', __FILE__)
jars = LockJar.load(lockfile)
puts "loaded jars are #{jars}"