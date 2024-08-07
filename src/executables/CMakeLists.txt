# -*- mode: cmake -*-

#
#  Amanzi
#    Amanzi executables
#    Directory contains the source code to produce stand-alone
#    binaries.
#

# Amanzi module, include files found in AMANZI_MODULE_PATH
include(PrintVariable)
include(TestManager)
include(BinaryManager)

#
# Define a project name
# After this command the following varaibles are defined
#   EXEC_SOURCE_DIR
#   EXEC_BINARY_DIR
# Other projects (subdirectories) can reference this directory
# through these variables.
project(EXEC)

# Amanzi include directories
include_directories(${ATK_SOURCE_DIR})
include_directories(${CHEM_SOURCE_DIR})
include_directories(${CHEMPK_SOURCE_DIR})
include_directories(${DATA_STRUCTURES_SOURCE_DIR})
include_directories(${DBC_SOURCE_DIR})
include_directories(${DBG_SOURCE_DIR})
include_directories(${ENERGY_SOURCE_DIR})
include_directories(${EOS_SOURCE_DIR})
include_directories(${FLOW_SOURCE_DIR})
include_directories(${FUNCS_SOURCE_DIR})
include_directories(${GEOMETRY_SOURCE_DIR})
include_directories(${MESH_SOURCE_DIR})
include_directories(${MESH_DATA_SOURCE_DIR})
include_directories(${MESH_FACTORY_SOURCE_DIR})
include_directories(${MFUNCS_SOURCE_DIR})
include_directories(${MPC_SOURCE_DIR})
include_directories(${MPC_TREE_SOURCE_DIR})
include_directories(${MULTIPHASE_SOURCE_DIR})
include_directories(${MESH_MSTK_SOURCE_DIR})
include_directories(${OPERATORS_SOURCE_DIR})
include_directories(${OUTPUT_SOURCE_DIR})
include_directories(${PKS_SOURCE_DIR})
include_directories(${PLATFORM_INTERFACE_SOURCE_DIR})
include_directories(${SHALLOW_WATER_SOURCE_DIR})
include_directories(${SOLVERS_SOURCE_DIR})
include_directories(${STATE_SOURCE_DIR})
include_directories(${STATE_SOURCE_DIR}/data)
include_directories(${STATE_SOURCE_DIR}/evaluators)
include_directories(${TIME_INTEGRATION_SOURCE_DIR})
include_directories(${TRANSPORT_SOURCE_DIR})
include_directories(${WHETSTONE_SOURCE_DIR})

# Chemistry includes directory
get_property(CHEM_INCLUDES_DIR GLOBAL PROPERTY CHEM_INCLUDES_DIR)
include_directories(${CHEM_INCLUDES_DIR})

# The mesh frameworks
set(amanzi_mesh_libs "")
list(APPEND amanzi_mesh_libs stk_mesh exodus_reader)
if(ENABLE_MESH_MOAB)
  add_definitions("-DHAVE_MESH_MOAB")
endif()
if(ENABLE_MESH_MSTK)
  add_definitions("-DHAVE_MESH_MSTK")
endif()

# External (TPL) include directories
include_directories(${Boost_INCLUDE_DIRS})
include_directories(${Teuchos_INCLUDE_DIRS})
include_directories(${Epetra_INCLUDE_DIRS})
if(ENABLE_MESH_MOAB)
    include_directories(${MOAB_INCLUDE_DIRS})
    include_directories(${MOAB_SOURCE_DIR})
    list(APPEND amanzi_mesh_libs mesh_moab)
endif()
include_directories(${HDF5_C_INCLUDE_DIR})
include_directories(${HDF5_INCLUDE_DIRS})
include_directories(${ASCEMIO_INCLUDE_DIR})

# Copy input files to build directory if out of source build
 if (NOT (EXEC_SOURCE_DIR STREQUAL EXEC_BINARY_DIR))
        execute_process(COMMAND ${CMAKE_COMMAND} -E 
          copy_directory ${EXEC_SOURCE_DIR}/inputfiles ${EXEC_BINARY_DIR}/inputfiles ) 
    endif()

if(ENABLE_MESH_MSTK)
  add_amanzi_library(udriv
                   SOURCE AmanziUnstructuredGridSimulationDriver.cc
                   LINK_LIBS mesh mesh_audit mesh_factory state mpc eos 
                             flow transport energy shallow_water multiphase
                             interface error_handling
                             ${Epetra_LIBRARIES} ${Teuchos_LIBRARIES} ${Boost_LIBRARIES}
                             ${XERCES_LIBRARIES} ${XERCES_ICU_LIBRARIES})
endif() 

#
# Binary: verify_mesh
add_amanzi_executable(verify_mesh
                      SOURCE VerifyMesh.cc
                      LINK_LIBS mesh_factory mesh mesh_audit 
                                ${Boost_LIBRARIES} ${Epetra_LIBRARIES} ${HDF5_LIBRARIES})

#
# Binary: verify_hex
# verify_hex uses deprecated boost::filesystem
# methods needs to pass version information to the
# prepoccessor
add_amanzi_executable(verify_hex
                      SOURCE VerifyHex.cc
                      LINK_LIBS mesh_factory
                                mesh mesh_audit
                                output ${Boost_LIBRARIES} ${HDF5_LIBRARIES})
set_target_properties(verify_hex PROPERTIES
                      COMPILE_DEFINES "${Boost_FILESYSTEM_DEFINES}")

#
# Binary: concat
#
add_amanzi_executable(concat
                      SOURCE concat.cc)

#
#
#
add_install_shellscript(splitexo.sh)

#
# Install include files
#
add_install_include_file(AmanziUnstructuredGridSimulationDriver.hh)
