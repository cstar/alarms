%%%-------------------------------------------------------------------
%%% @author Pawel Chrzaszcz
%%% @copyright (C) 2013, Erlang Solutions Ltd.
%%% @doc Alarm service utils
%%%
%%% @end
%%% Created : 8 May 2013 by pawel.chrzaszcz@erlang-solutions.com
%%%-------------------------------------------------------------------
-module(alarms_utils).

-export([alarm_types/0, get_cfg/1, set_cfg/2]).

-include("alarms.hrl").

get_cfg(Key) ->
    {ok, Val} = application:get_env(alarms, Key),
    Val.

set_cfg(Key, Val) ->
    application:set_env(alarms, Key, Val).

alarm_types() ->
    ?ALARM_TYPES.