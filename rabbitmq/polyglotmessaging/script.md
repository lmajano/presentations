AMQP Demo
========

* Java first
** Create Publisher.java
** Run the sample and show the stats in the management plugin
*** Point out that there are no queues created
** Create and run Consumer.java
*** Show the statistics again. Show queue created
*** Show the queue auto-delete
*** Explain acknowledgement
** Create and run NewConsumer.java
*** Leave out auto-delete to highlight equality
*** Show deleting in the web console

* Erlang Publisher
** Demonstrate creation of a new publisher
** Run it alongside the Java consumer
** Intertwine the Java publisher

STOMP Demo
=========

* Start the STOMP consumer
* Send some frames from telnet
* Wire it together with the AMQP producer using /exchange resources

Web Demo
=======

* Don't forget that publishers need to bind to amq.direct now

* Client
** Show the index.html template
** Add in the Sock.JS code

* Server
** Show the basic framework
** Add in the SockJS code


Pull-it All Together
============

* Show Ruby and Telnet STOMP consumers
* Show Java and Python Consumers
* Show the Node.js Consumer

* Run the Java and Erlang producers
