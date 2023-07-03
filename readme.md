To add the project to sbcl repl, go to the root directory of the project,

```common-lisp
    (pushnew (uiop:getcwd) ql:*local-project-directories*)
```

And then load the project into sbcl repl.

```common-lisp
    (ql:quickload :basic-lisp)
```

To run the main program

```common-lisp
    (basic-lisp::main)
```

To create an executable from the project 

```common-lisp
    (asdf:make :basic-lisp)
```

To create an executable from roswell

```bash
    $ ros -l build.lisp
```
