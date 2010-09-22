{application, base,
 [{description, "base"},
  {vsn, "0.01"},
  {modules, [
    base,
    base_app,
    base_sup,
    base_web,
    base_deps
  ]},
  {registered, []},
  {mod, {base_app, []}},
  {env, []},
  {applications, [kernel, stdlib, crypto]}]}.
