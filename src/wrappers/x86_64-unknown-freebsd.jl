# Autogenerated wrapper script for Singular_jll for x86_64-unknown-freebsd
export Singular, libfactory, libomalloc, libparse, libpolys, libsingular, libsingular_resources

using cddlib_jll
using FLINT_jll
using GMP_jll
using MPFR_jll
JLLWrappers.@generate_wrapper_header("Singular")
JLLWrappers.@declare_library_product(libfactory, "libfactory-4.4.1.so")
JLLWrappers.@declare_library_product(libomalloc, "libomalloc-0.9.6.so")
JLLWrappers.@declare_library_product(libpolys, "libpolys-4.4.1.so")
JLLWrappers.@declare_library_product(libsingular, "libSingular-4.4.1.so")
JLLWrappers.@declare_library_product(libsingular_resources, "libsingular_resources-4.4.1.so")
JLLWrappers.@declare_executable_product(Singular)
JLLWrappers.@declare_executable_product(libparse)
function __init__()
    JLLWrappers.@generate_init_header(cddlib_jll, FLINT_jll, GMP_jll, MPFR_jll)
    JLLWrappers.@init_library_product(
        libfactory,
        "lib/libfactory.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libomalloc,
        "lib/libomalloc.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpolys,
        "lib/libpolys.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsingular,
        "lib/libSingular.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libsingular_resources,
        "lib/libsingular_resources.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        Singular,
        "bin/Singular",
    )

    JLLWrappers.@init_executable_product(
        libparse,
        "bin/libparse",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
