-module(publisher).

-export([start/0, stop/1]).
-export([loop/1]).

-include_lib("amqp_client/include/amqp_client.hrl").

start() ->
    ok.

stop(Pid) ->
    Pid ! stop.

loop(Channel) ->
    ok.




