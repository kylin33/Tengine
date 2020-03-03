if(PROTOBUF_DIR)
  if(ANDROID)
    if("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "armv7-a")
      set( PROTOBUF_LIB ${PROTOBUF_DIR}/libprotobuf.so)
    endif()
      if ("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "aarch64")
        set( PROTOBUF_LIB ${PROTOBUF_DIR}/libprotobuf.so)
      endif()
  else()
    link_directories(${PROTOBUF_DIR})  
    set( PROTOBUF_LIB protobuf )
  endif()
 endif()

if( ACL_DIR )
	if(ANDROID)
		if("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "armv7-a")
			#set( ACL_LIB ${ACL_DIR}/libarm_compute_core.so ${ACL_DIR}/libarm_compute.so)
		endif()
		if("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "aarch64")
			#set( ACL_LIB ${ACL_DIR}/libarm_compute_core.so ${ACL_DIR}/libarm_compute.so)
		endif()
	else()
		link_directories(${ACL_DIR})
		#set( ACL_LIB arm_compute_core arm_compute )
	endif()
endif()	

if( BLAS_DIR)
  if(ANDROID)
    if("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "armv7-a")
      set( BLAS_LIB ${BLAS_DIR}/libopenblas.so)
    endif()
      if("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "aarch64")
        set( BLAS_LIB ${BLAS_DIR}/libopenblas.so)
      endif()
  else()
      link_directories(${BLAS_DIR})
      set( BLAS_LIB openblas )
  endif()
endif()

   
