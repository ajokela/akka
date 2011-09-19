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