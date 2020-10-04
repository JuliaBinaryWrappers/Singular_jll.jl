# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Singular_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Singular")
JLLWrappers.@generate_main_file("Singular", UUID("43d676ae-4934-50ba-8046-7a96366d613b"))
end  # module Singular_jll
