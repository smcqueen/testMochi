{application, testMochi,
 [{description, "testMochi"},
  {vsn, "0.01"},
  {modules, [
    testMochi,
    testMochi_app,
    testMochi_sup,
    testMochi_web,
    testMochi_deps
  ]},
  {registered, []},
  {mod, {testMochi_app, []}},
  {env, []},
  {applications, [kernel, stdlib, crypto]}]}.
