cd(@__DIR__)

using Pkg

using Test, TestSetExtensions, SafeTestsets
using Genie

isdir(joinpath(Genie.config.path_build, Genie.Renderer.BUILD_NAME)) && rm(joinpath(Genie.config.path_build, Genie.Renderer.BUILD_NAME), force = true, recursive = true)

@testset ExtendedTestSet "Genie tests" begin
  @includetests ARGS
end