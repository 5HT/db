-module(db).
-compile(export_all).
-behaviour(application).
-behaviour(supervisor).
-include_lib("kvs/include/metainfo.hrl").
-export([start/2, stop/1, init/1]).

start(_StartType, _StartArgs) -> supervisor:start_link({local, ?MODULE}, ?MODULE, []).
stop(_State) -> ok.
init([]) -> {ok, { {one_for_one, 5, 10}, []} }.

metainfo() -> #schema { name = dn,    tables = tables() }.
tables() -> [  ].

