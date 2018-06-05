
# Try to find the MPC librairies
# MPC_FOUND - system has MPC lib
# MPC_INCLUDE_DIR - the MPC include directory
# MPC_LIBRARIES - Libraries needed to use MPC

if (MPC_INCLUDE_DIR AND MPC_LIBRARIES)
		# Already in cache, be silent
		set(MPC_FIND_QUIETLY TRUE)
endif (MPC_INCLUDE_DIR AND MPC_LIBRARIES)

find_path(MPC_INCLUDE_DIR NAMES mpc.h )
find_library(MPC_LIBRARIES NAMES mpc libmpc )

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(MPC DEFAULT_MSG MPC_INCLUDE_DIR MPC_LIBRARIES)

mark_as_advanced(MPC_INCLUDE_DIR MPC_LIBRARIES)