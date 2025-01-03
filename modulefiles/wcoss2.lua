help([[
Load environment to build post on WCOSS2
]])

prepend_path("MODULEPATH", "/apps/ops/test/spack-stack-1.6.0-nco/envs/nco-intel-19.1.3.304/install/modulefiles/Core")

local stack_intel_ver=os.getenv("stack_intel_ver") or "19.1.3.304"
load(pathJoin("stack-intel", stack_intel_ver))

local stack_cray_mpich_ver=os.getenv("stack_cray_mpich_ver") or "8.1.9"
load(pathJoin("stack-cray-mpich", stack_cray_mpich_ver))

cmake_ver=os.getenv("cmake_ver") or "3.23.1"
load(pathJoin("cmake", cmake_ver))

load("upp_common")

setenv("CC","cc")
setenv("CXX","CC")
setenv("FC","ftn")

whatis("Description: post build environment")
