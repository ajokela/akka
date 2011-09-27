Using the Akka Actor Framework from JRuby - *Now in Gem Form*
=========================================

Using the akka ([Akka](http://akka.io/)) gem from JRuby.


  require 'rubygems'
	require 'akka'
	
	class TestActor < Actor
	  def onReceive(msg)
		puts "Got message: #{msg}"
	  end
	end
	
	actor = TestActor.spawn
	
	10.times do
	  actor.sendOneWay("Hello Actor!")
	end
