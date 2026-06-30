load("@rules_java//java:java_binary.bzl", "java_binary")

def many_java(name, srcs, main_class):
    for i in range(10):
        java_binary(
           name = name + "_" + str(i),
           srcs = srcs,
           main_class = main_class,
        )