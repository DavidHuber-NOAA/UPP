help([[
Load environment to build UPP on NOAA Cloud
]])


prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.6.0/envs/unified-env/install/modulefiles/Core")
prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.6.0/envs/upp-addon-env/install/modulefiles/Core")

stack_intel_ver=os.getenv("stack_intel_ver") or "2021.3.0"
load(pathJoin("stack-intel", stack_intel_ver))

stack_impi_ver=os.getenv("stack_impi_ver") or "2021.3.0"
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))

cmake_ver=os.getenv("cmake_ver") or "3.23.1"
load(pathJoin("cmake", cmake_ver))

load("upp_common")

setenv("CC","mpiicc")
setenv("CXX","mpiicpc")
setenv("FC","mpiifort")

whatis("Description: UPP build environment")
