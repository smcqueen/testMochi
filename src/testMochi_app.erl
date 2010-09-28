%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the testMochi application.

-module(testMochi_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2, stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for testMochi.
start(_Type, _StartArgs) ->
    testMochi_deps:ensure(),
    testMochi_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for testMochi.
stop(_State) ->
    ok.


%%
%% Tests
%%
-include_lib("eunit/include/eunit.hrl").
-ifdef(TEST).
-endif.
