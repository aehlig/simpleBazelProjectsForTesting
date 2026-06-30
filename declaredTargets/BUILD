load("@rules_java//java:java_binary.bzl", "java_binary")
load(":many_java.bzl", "many_java")
load(":foo.bzl", "foo", "many_foo")

java_binary(
    name = "manual_hello",
    srcs = ["Hello.java"],
    main_class = "Hello",
)

many_java(
    name = "macro_hello",
    srcs = ["Hello.java"],
    main_class = "Hello",
)

foo(
    name = "manual_foo",
    srcs = True,
)

many_foo(
    name = "macro_foo",
    srcs = True,
)