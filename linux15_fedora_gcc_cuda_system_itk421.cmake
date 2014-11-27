# client maintainer: simon.rit@creatis.insa-lyon.fr
set(CTEST_SITE "linux15.dg.creatis.insa-lyon.fr")
set(CTEST_BUILD_NAME "Linux-64bit-gcc-cuda-system-itk421")
set(CTEST_BUILD_CONFIGURATION Release)
set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_DASHBOARD_ROOT "/tmp/RTK_dashboard")
set(dashboard_binary_name "RTK_lin64_gcc_cuda_system_itk421")
set(ENV{ITK_DIR} "/home/srit/src/itk421/lin64-dg/lib/cmake/ITK-4.2")
set(ENV{CUDA_BIN_PATH} "/usr/local/cuda-6.5/bin")
set(ENV{CUDA_LIB_PATH} "/usr/lib64/nvidia")
set(CTEST_BUILD_FLAGS -j8)

# OpenCL
set(ENV{LD_LIBRARY_PATH} "/usr/lib64/nvidia:$ENV{LD_LIBRARY_PATH}")
set(CONFIGURE_OPTIONS
   -DOPENCL_LIBRARIES:PATH=/usr/lib64/nvidia/libOpenCL.so.1
   -DOPENCL_INCLUDE_DIRS:PATH=/usr/local/cuda-6.5/include
   -DRTK_USE_CUDA:BOOL=ON
   -DRTK_USE_OPENCL:BOOL=ON
  )

include("${CTEST_SCRIPT_DIRECTORY}/rtk_common.cmake")
