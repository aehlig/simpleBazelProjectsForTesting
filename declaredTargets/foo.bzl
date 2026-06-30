def _foo_impl(ctx):
    main = ctx.actions.declare_file("main_" + ctx.label.name)
    ctx.actions.write(main, "Main for " + ctx.label.name)
    files = [main]
    if ctx.attr.srcs:
        src = ctx.actions.declare_file("src_" + ctx.label.name)
        ctx.actions.write(src, "Sources for " + ctx.label.name)
        files += [src]
    return [DefaultInfo(files = depset(files))]

foo = rule(
    implementation = _foo_impl,
    attrs = {"srcs": attr.bool()},
)

def many_foo(name, srcs):
    for i in range(10):
        foo(
           name = name + "_" + str(i),
           srcs = srcs,
        )
