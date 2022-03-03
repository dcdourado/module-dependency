# ModuleDependency

When a module attribute is based on the return of a function defined on another module, can we say we've a module dependency?

The case exposed on this repository shows a problem you might face when redefining a module attribute that other modules depend, which won't perceive the change.

Run `iex -S mix` and check the values of `values/0` function of modules Module A and B, which will
be:

```mix.exs
iex(1)> ModuleDependency.ModuleA.values
[:value_a, :value_b, :value_c]
iex(2)> ModuleDependency.ModuleB.values
[:value_a, :value_b, :value_c]
```

After that, switch [ModuleA](lib/module_dependency/module_a.ex) comments of lines 6 and 7 and copy-paste it on the mix session to redefine it.

Now execute the functions again and notice that ModuleB don't reflect the changes.