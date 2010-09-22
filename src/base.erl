%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc TEMPLATE.

-module(base).
-author('author <author@example.com>').
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.

%% @spec start() -> ok
%% @doc Start the base server.
start() ->
    base_deps:ensure(),
    ensure_started(crypto),
    application:start(base).

%% @spec stop() -> ok
%% @doc Stop the base server.
stop() ->
    Res = application:stop(base),
    application:stop(crypto),
    Res.
