HAML
====

* Use two-space indentation for multi-line parameters
```
= some_method(parameter1,
  parameter2,
  parameter3
```

* Indent ``do`` after multi-line parameters to the same depth as the ``=``
```
= simple_form_for(foo,
  bar: { foo: :bar },
) do |f|
  = f.input :foo
```
