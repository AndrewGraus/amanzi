#  -*- mode: cmake -*-

#
# TPLVersions
#
#    Define the versions, approved download locations for each TPL
#

#
# TPL: Amanzi Collection of TPLs
#
#   Define a "version number" for the collection of TPLs listed here.
#   It's not clear this is the best way to include this information,
#   but it's a reasonable place to start.
#
#   Upgrade History:
#
#   0.90.6       - first version reference used in installations
#   0.90.7       - updated MSTK to version 2.01
#                - added NETCDF - fortran version 4.2 (interface library)
#   0.90.8       - added Xerces-C++ version 3.1.1 (XML support)
#   0.90.9       - update MSTK to version 2.02
#
#   0.91.0       - added PFLOTRAN and Alquimia (updates from Jeff Johnson's work on state-branch)
#   0.91.1       - updated CCSE to version 1.1.7 (and added patch)
#   0.91.2       - turned on patch for IfPack support of noncontiguous global ids with HYPRE
#   0.91.3       - updated Xerces-C++ build/find to use OSX CoreServices framework
#   0.91.4       - updated CCSE to version 1.1.8
#   0.91.5       - updated CCSE to version 1.2.1
#   0.91.6       - updated CCSE to version 1.2.3
#   0.91.7       - updated MSTK to version 2.10rc3
#   0.91.8       - updated Alquimia to licensed version 0.1
#   0.91.9       - updated CCSE to version 1.2.4
#   0.91.10      - updated MSTK to version 2.10rc5
#   0.91.11      - updated PFlotran to commit 1afe88d.
#   0.91.12      - updated MSTK to version 2.10
#   0.91.12a     - updated METIS to 5.1.0, ParMetis to 4.0.3a, SuperLU to 4.3, SuperLUDist to 3.3 and PETSc to 3.4.3
#   0.91.12b     - updated Trilinos to 10.6.1 and MSTK to 2.11rc2
#   0.91.12c     - updated CCSE to version 1.2.5
#   0.91.13      - updated MSTK to version 2.11rc3
#   0.91.14      - updated MSTK to version 2.11rc4 (fixes memory leaks)
#   0.91.15      - updated MSTK to version 2.11rc5 (fixes memory leaks)
#
#   0.92.0       - Merge lib updates through 0.91.15
#   0.92.1       - update MSTK to version 2.12 (fixes debug version linking)
#   0.92.2       - update CCSE to version 1.2.7 (adds f90 utility for plotting)
#   0.92.3       - update CURL to version 7.37.0 (builds correctly on Mac OS X 10.9)
#   0.92.4       - update NetCDF to version 4.3.2 (builds correctly on Mac OS X 10.9)
#   0.92.5       - Patched Alquimia to build properly with GFortran 4.9.x
#   0.92.6       - update Boost to version 1.56.0
#   0.92.7       - update CCSE to version 1.2.8
#   0.92.8       - update ExodussII 5.22 -> 6.06
#   0.92.9       - update MSTK to v 2.21 (incompatible -DWITH_MSTK_2_21rc1_OR_NEWER=TRUE)
#   0.92.10      - update MSTK to v 2.22rc1
#   0.92.11      - update MSTK to v 2.22rc3 (fixed parallel mesh partitioning bug)
#   0.92.12      - update PETSc to 3.5.2, Alquimia to 0.2, and PFlotran to commit 611092f80ddb.
#   0.92.13      - update MSTK to v2.22, includes installation of mesh utilities
#   0.92.14      - update Hypre to v2.10.0b (and added patch for to ensure tol>0)
#   0.92.15      - updated Alquimia to v0.2 (backward compatible)
#   0.92.16      - update CCSE to version 1.3.0
#   0.92.17      - update MSTK to version 2.23 (adds element set capabilities)
#   0.92.18      - update Boost to version 1.58.0
#   0.92.19      - update CCSE to version 1.3.2
#   0.92.20      - update CCSE to version 1.3.4 (fix issue with fsnapshot)
#   0.92.21      - update Alquimia to version 0.3.1 (CrunchFlow integration)
#   0.92.22      - added optional Silo package
#   0.92.23      - Patched ASCEM-IO to allocate space for sprintf() correctly.
#   0.92.24      - update MSTK to version 2.25 (updates to meshconvert, exoatt)
#   0.92.25      - update MSTK to version 2.26rc2 (adds fixes for pinchouts)
#
#   0.93.0       - defaulted to C++11, update Trilinos to 12.6.1
#   0.93.1       - update Boost to version 1.61.0
#   0.93.2       - update Alquimia to version 1.0.3
#   0.93.3       - update Alquimia to version 1.0.4
#
#   0.94.1       - updates several TPLs, new versions are:
#                - Trilinos 12.10.1
#                - zlib 1.2.11
#                - hdf5 1.8.12
#                - netcdf 4.4.1.1
#                - netcdf-fortran 4.4.4
#                - boost 1.6.3
#   0.94.2       - update MTSK to version 2.28rc1
#   0.94.3       - update MSTK to version 3.00 (incompatible - need to update #defines)
#   0.94.4       - update MSTK to version 3.01
#   0.94.5       - restored Alquimia to version 1.0.4
#   0.94.6       - Added CrunchTope package, hash version c31ecb9
#   0.94.7       - update UnitTest++ to version 2.0.0
#                - update Hypre to version 2.11.2
#   0.94.8       - removed ExodusII as independent TPL
#   0.94.9       - update PFloTran to version dev-c8df814cb6fa
#                - update PETSc to xsdk-0.2.0 (native 3.7.5)
#                - update SuperLU to 5.2.1
#                - update SuperLU_dist to xsdk-0.2.0 (native 5.1.3)
#                - update Alquimia to xsdk-0.2.0 (native 1.0.4)
#                - update Hypre to xsdk-0.2.0 (native 2.11.2)
#   0.94.10      - update Alquimia to 1.0.5 (critical bug fixes)
#   0.94.11      - update MSTK to 3.0.3 (critical bug fixes)
#                - update NetCDF to 4.5.0
#                - update NetCDF-Fortran to 4.4.4
#                - update curl to 7.56.1
#   0.94.12      - update xerces-c to 3.2.0 (CMake build)

#   0.95.0       - update Trilinos 12.12.1
#                - update Hypre 2.12.1
#                - note alquimia 1.0.5 == xsdk-0.3.0
#                - pflotran release/xsdk-0.3.0
#                - update PETSc 3.8.2
#   0.95.1       - update OpenMPI to 3.0.1
#   0.95.2       - added Amesos2 to list of built Trilinos packages
#                - update MSTK to 3.0.4
#   0.95.3       - removed CURL
#                - update HYPRE to 2.14.0
#                - update OpenMPI to 3.0.2
#   0.95.4       - update Boost to version 1.67.0
#   0.95.5       - update NetCDF to version 4.6.1
#                - update OpenMPI to 3.1.1
#   0.95.6       - added new package nanoflann 1.3.0
#   0.95.7       - update MSTK to 3.1.0
#   0.95.8       - update NetCDF-Fortran to 4.4.5
#   0.95.9       - update NetCDF-C to 4.7.0
#   0.95.10      - update OpenMPI to 3.1.4

#   0.96.0       - update Trilinos to 12.14.0bf557717e-Jun17
#   0.96.1       - update NetCDF-C to 4.7.1
#                - update MOAB to 5.1.0
#   0.96.2       - update SuperLU_Dist to 3.4.0
#                - update PETSc to 3.11.3
#                - update PFloTran to b681066 (Sep 20, 2019)
#                - update Alquimia to 1.0.6-rc
#   0.96.3       - update HDF5 to 1.10.5
#   0.96.4       - update MSTK to 3.2.1
#
#   0.97.0       - update HDF5 to 1.10.6
#                - update Nanoflann to 1.3.1
#                - update Trilinos to 55a7599733 (Nov11, 2019, also 12.18.1)
#                - update NetCDF-C to 4.7.3
#                - update NetCDF-Fortran to 4.5.2
#   0.97.1       - update MSTK to 3.3.1
#   0.97.2       - update MSTK to 3.3.5
#   0.97.3       - update CrunchTope to hash version 906e164 (Apr 2, 2020)
#   0.97.4       - added CLM
#   0.97.5       - added exprtk
#   0.97.6       - update BoxLib (CCSE) to version 1.3.5
#   0.97.7       - update ASCEMIO
#   0.97.8       - update BoxLib (CCSE) to version 17.05.1
#   0.97.9       - update Alquimia to 1.0.7-rc
#                - update PFloTran to v3.0 (Jul 17, 2020)
#                - update PETSc to 3.13
#                - update SuperLU_DIST to 6.1.1
#                - update CLM to 0.1.1
#   0.97.10      - update Hypre to 2.20.0
#                - update SuperLU to 5.2.2
#                - update MOAB to 5.2.0
#   0.97.11      - update SuperLU_dist to 6.2.0
#                - update Trilinos to 9fec3527 (Aug5, 2020, also 13.0.0)
#   0.97.12      - update Trilinos to afc4e525 (Nov 14, 2020)
#   0.97.13      - update Alquimia to 1.0.8
#   0.97.14      - update MSTK to 3.3.6

#   0.98.0       - configuration updates fixing CamelCase names (required changes in Amanzi build as well)
#   0.98.1       - configuratoin updates fixing consistency of meshing options (required changes in Amanzi build as well).
#   0.98.2       - update Hypre to 2.22.0
#   0.98.3       - enforced c++14 standard for Trilinos and Amanzi
#   0.98.4       - add cybernetic patch from Glenn for PFLOTRAN
#   0.98.5       - update HDF5 to 1.12.1
#                - update netcdf-c to 4.8.1
#                - update netcdf-fortran to 4.5.4
#                - update SILO to 4.11 is needed
#                - update SEACAS to date tag v2022-02-16
#                - update Nanoflann to 1.4.2
#                - update ExprTk to 0.0.1
#                - update Boost to 1.78.0
#                - update MOAB to 5.3.1
#                - update Sowing to 1.1.26-p2
#                - update PFLOTRAN to 3.0.2 (compatible with PETSc and Alqumia)
#                - update PETSc to 3.16.0
#   0.98.6       - update Alquimia to version 1.0.9
#   0.98.7       - update Trilinos to fc55b9cd (Also 14.2.0)
#                - update Hypre to 8f6bdc6a (Also 2.29.0)
#   0.98.8       - update ExprTk to 0.0.2
#                - update PETSc to 3.20.0
#                - update Sowing to 1.1.26-p8
#                - update Alquimia 1.1.0
#                - update PFLOTRAN 5.0.0
#                - update superlu_dist v6.4.0 (minimum required by PETSc is 6.3.0, but maybe we should go newer).
#                - update CrunchTope to latest fix on master
#   0.98.9       - bug fixes CheckMPISourceCompiles
#                - update Trilinos to 15.1.0 (6af5f44)
#                - update Silo to 4.11.1
#                - remove Boost and Trilinos dependency on Boost
#   0.98.10      - patch ascem/io to improve error handling

include(CMakeParseArguments)

MACRO(LIST_LENGTH var)
  SET(entries)
  FOREACH(e ${ARGN})
    SET(entries "${entries}.")
  ENDFOREACH(e)
  STRING(LENGTH "${entries}" ${var})
ENDMACRO(LIST_LENGTH)

# this macro appends version number defines to the tpl_versions.h include file
macro(amanzi_tpl_version_write)
  set(singleValueArgs FILENAME PREFIX)
  set(multiValueArgs VERSION)
  set(options "")

  cmake_parse_arguments(LOCAL "${options}" "${singleValueArgs}" "${multiValueArgs}" ${ARGN})

  list_length(length ${LOCAL_VERSION})

  if (length GREATER 0)
    list(GET LOCAL_VERSION 0 MAJOR)
    file(APPEND ${LOCAL_FILENAME} "#define ${LOCAL_PREFIX}_MAJOR ${MAJOR}\n")
  else()
    file(APPEND ${LOCAL_FILENAME} "#define ${LOCAL_PREFIX}_MAJOR\n")
  endif()

  if (length GREATER 1)
    list(GET LOCAL_VERSION 1 MINOR)
    file(APPEND ${LOCAL_FILENAME} "#define ${LOCAL_PREFIX}_MINOR ${MINOR}\n")
  else()
    file(APPEND ${LOCAL_FILENAME} "#define ${LOCAL_PREFIX}_MINOR\n")
  endif()

  if (length GREATER 2)
    list(GET LOCAL_VERSION 2 PATCH)
    file(APPEND ${LOCAL_FILENAME} "#define ${LOCAL_PREFIX}_PATCH ${PATCH}\n")
  else()
    file(APPEND ${LOCAL_FILENAME} "#define ${LOCAL_PREFIX}_PATCH\n")
  endif()

  file(APPEND ${LOCAL_FILENAME} "\n")

endmacro(amanzi_tpl_version_write)


#
# TPLs and XSDK versions
#
set(AMANZI_TPLS_VERSION_MAJOR 0)
set(AMANZI_TPLS_VERSION_MINOR 98)
set(AMANZI_TPLS_VERSION_PATCH 10)
set(AMANZI_TPLS_VERSION ${AMANZI_TPLS_VERSION_MAJOR}.${AMANZI_TPLS_VERSION_MINOR}.${AMANZI_TPLS_VERSION_PATCH})
# Not sure how to create a meaningful hash key for the collection

set(XSDK_VERSION "0.3.0")

#
# Default location on GitHub
#
set (AMANZI_TPLS_DOWNLOAD_URL "https://raw.githubusercontent.com/amanzi/amanzi-tpls/master/src")

#
# TPL: Xerces
#
set(XERCES_VERSION_MAJOR 3)
set(XERCES_VERSION_MINOR 2)
set(XERCES_VERSION_PATCH 0)
set(XERCES_VERSION ${XERCES_VERSION_MAJOR}.${XERCES_VERSION_MINOR}.${XERCES_VERSION_PATCH})
set(XERCES_URL_STRING     ${AMANZI_TPLS_DOWNLOAD_URL})
set(XERCES_ARCHIVE_FILE   xerces-c-${XERCES_VERSION}.tar.bz2)
set(XERCES_SAVEAS_FILE    ${XERCES_ARCHIVE_FILE})
set(XERCES_MD5_SUM        7b1394c32abbdd87841d94a8404c2ac6)

#
# TPL: OpenMPI
#
set(OpenMPI_VERSION_MAJOR 3)
set(OpenMPI_VERSION_MINOR 1)
set(OpenMPI_VERSION_PATCH 4)
set(OpenMPI_VERSION ${OpenMPI_VERSION_MAJOR}.${OpenMPI_VERSION_MINOR}.${OpenMPI_VERSION_PATCH})
set(OpenMPI_URL_STRING     "https://www.open-mpi.org/software/ompi/v3.1/downloads/")
set(OpenMPI_ARCHIVE_FILE   openmpi-${OpenMPI_VERSION}.tar.bz2)
set(OpenMPI_SAVEAS_FILE    ${OpenMPI_ARCHIVE_FILE})
set(OpenMPI_MD5_SUM        29770c6efcbb4c41d820cb6b8eae90b8)

#
# TPL: MPICH
#
set(MPICH_VERSION_MAJOR 3)
set(MPICH_VERSION_MINOR 2)
set(MPICH_VERSION_PATCH 1)
set(MPICH_VERSION ${MPICH_VERSION_MAJOR}.${MPICH_VERSION_MINOR}.${MPICH_VERSION_PATCH})
set(MPICH_URL_STRING     "https://www.mpich.org/static/downloads/${MPICH_VERSION}/")
set(MPICH_ARCHIVE_FILE   mpich-${MPICH_VERSION}.tar.gz)
set(MPICH_SAVEAS_FILE    ${MPICH_ARCHIVE_FILE})
set(MPICH_MD5_SUM        e175452f4d61646a52c73031683fc375)

#
# TPL: zlib
#
set(ZLIB_VERSION_MAJOR 1)
set(ZLIB_VERSION_MINOR 2)
set(ZLIB_VERSION_PATCH 11)
set(ZLIB_VERSION ${ZLIB_VERSION_MAJOR}.${ZLIB_VERSION_MINOR}.${ZLIB_VERSION_PATCH})
set(ZLIB_URL_STRING     ${AMANZI_TPLS_DOWNLOAD_URL})
set(ZLIB_ARCHIVE_FILE   zlib-${ZLIB_VERSION}.tar.gz)
set(ZLIB_SAVEAS_FILE    ${ZLIB_ARCHIVE_FILE})
set(ZLIB_MD5_SUM        1c9f62f0778697a09d36121ead88e08e)

#
# TPL: METIS
#
set(METIS_VERSION_MAJOR 5)
set(METIS_VERSION_MINOR 1)
set(METIS_VERSION_PATCH 0)
set(METIS_VERSION ${METIS_VERSION_MAJOR}.${METIS_VERSION_MINOR}.${METIS_VERSION_PATCH})
set(METIS_URL_STRING     ${AMANZI_TPLS_DOWNLOAD_URL})
set(METIS_ARCHIVE_FILE   metis-${METIS_VERSION}.tar.gz)
set(METIS_SAVEAS_FILE    ${METIS_ARCHIVE_FILE})
set(METIS_MD5_SUM        5465e67079419a69e0116de24fce58fe)

#
# TPL: CCSE
#
set(CCSE_VERSION_MAJOR 17)
set(CCSE_VERSION_MINOR 05)
set(CCSE_VERSION_PATCH 1)
set(CCSE_VERSION ${CCSE_VERSION_MAJOR}.${CCSE_VERSION_MINOR}.${CCSE_VERSION_PATCH})
set(AMANZI_DIR $ENV{AMANZI_DIR})
set(CCSE_URL_STRING     "https://github.com/BoxLib-Codes/BoxLib/archive/")
set(CCSE_ARCHIVE_FILE   ${CCSE_VERSION}.tar.gz)
set(CCSE_SAVEAS_FILE    ccse-${CCSE_VERSION}.tar.gz)
set(CCSE_MD5_SUM        97c3e1615cc649e2748fa9a7291724fa)
#set(CCSE_GIT_REPOSITORY "https://github.com/BoxLib-Codes/BoxLib")
#set(CCSE_GIT_TAG        "a15e0ee6b043cb87dc99c8fe902b10217eb4fe94")


#
# TPL: UnitTest
#
set(UnitTest_VERSION_MAJOR 2)
set(UnitTest_VERSION_MINOR 0)
set(UnitTest_VERSION_PATCH 0)
set(UnitTest_VERSION ${UnitTest_VERSION_MAJOR}.${UnitTest_VERSION_MINOR}.${UnitTest_VERSION_PATCH})
set(UnitTest_URL_STRING     ${AMANZI_TPLS_DOWNLOAD_URL})
set(UnitTest_ARCHIVE_FILE   unittest-cpp-${UnitTest_VERSION}.tgz)
set(UnitTest_SAVEAS_FILE    ${UnitTest_ARCHIVE_FILE})
set(UnitTest_MD5_SUM        29f958e355e516e7ab016b467974728d)

#
# TPL: Boost
#
set(Boost_VERSION_MAJOR 1)
set(Boost_VERSION_MINOR 78)
set(Boost_VERSION_PATCH 0)
set(Boost_VERSION        ${Boost_VERSION_MAJOR}.${Boost_VERSION_MINOR}.${Boost_VERSION_PATCH})
set(Boost_VERSION_STRING ${Boost_VERSION_MAJOR}_${Boost_VERSION_MINOR}_${Boost_VERSION_PATCH})
set(Boost_URL_STRING     "https://boostorg.jfrog.io/artifactory/main/release/${Boost_VERSION}/source/")
set(Boost_ARCHIVE_FILE   boost_${Boost_VERSION_STRING}.tar.bz2)
set(Boost_SAVEAS_FILE    ${Boost_ARCHIVE_FILE})
set(Boost_MD5_SUM        db0112a3a37a3742326471d20f1a186a)

#
# TPL: HDF5
#
set(HDF5_VERSION_MAJOR 1)
set(HDF5_VERSION_MINOR 12)
set(HDF5_VERSION_PATCH 1)
set(HDF5_VERSION ${HDF5_VERSION_MAJOR}.${HDF5_VERSION_MINOR}.${HDF5_VERSION_PATCH})
set(HDF5_URL_STRING     ${AMANZI_TPLS_DOWNLOAD_URL})
set(HDF5_ARCHIVE_FILE   hdf5-${HDF5_VERSION}.tar.bz2)
set(HDF5_SAVEAS_FILE    ${HDF5_ARCHIVE_FILE})
set(HDF5_MD5_SUM        442469fbf43626006346e679c22cf10a)


#
# TPL: NetCDF
#
set(NetCDF_VERSION_MAJOR 4)
set(NetCDF_VERSION_MINOR 8)
set(NetCDF_VERSION_PATCH 1)
set(NetCDF_VERSION ${NetCDF_VERSION_MAJOR}.${NetCDF_VERSION_MINOR}.${NetCDF_VERSION_PATCH})
set(NetCDF_URL_STRING     "https://github.com/Unidata/netcdf-c/archive/")
set(NetCDF_ARCHIVE_FILE   v${NetCDF_VERSION}.tar.gz)
set(NetCDF_SAVEAS_FILE    netcdf-${NetCDF_VERSION}.tar.gz)
set(NetCDF_MD5_SUM        b069f4eb1718798c2907c38189615f95)


#
# TPL: NetCDF Fortran
#
set(NetCDF_Fortran_VERSION_MAJOR 4)
set(NetCDF_Fortran_VERSION_MINOR 5)
set(NetCDF_Fortran_VERSION_PATCH 4)
set(NetCDF_Fortran_VERSION ${NetCDF_Fortran_VERSION_MAJOR}.${NetCDF_Fortran_VERSION_MINOR}.${NetCDF_Fortran_VERSION_PATCH})
set(NetCDF_Fortran_URL_STRING     "https://github.com/Unidata/netcdf-fortran/archive/")
set(NetCDF_Fortran_ARCHIVE_FILE   v${NetCDF_Fortran_VERSION}.tar.gz)
set(NetCDF_Fortran_SAVEAS_FILE    netcdf-fortran-${NetCDF_Fortran_VERSION}.tar.gz)
set(NetCDF_Fortran_MD5_SUM        77e1be413ab343f42a4a6e8b338b45d5)

#
# ASCEM-IO
#
set(ASCEMIO_VERSION_MAJOR 2)
set(ASCEMIO_VERSION_MINOR 4)
set(ASCEMIO_VERSION ${ASCEMIO_VERSION_MAJOR}.${ASCEMIO_VERSION_MINOR})
set(ASCEMIO_URL_STRING     ${AMANZI_TPLS_DOWNLOAD_URL})
set(ASCEMIO_ARCHIVE_FILE   ascem-io-${ASCEMIO_VERSION}.tar.gz)
set(ASCEMIO_SAVEAS_FILE    ${ASCEMIO_ARCHIVE_FILE})
set(ASCEMIO_MD5_SUM        e395b1d32bac6f04fa518911d57de725)

#
# TPL: MSTK
#
set(MSTK_VERSION_MAJOR 3)
set(MSTK_VERSION_MINOR 3)
set(MSTK_VERSION_PATCH 6)

set(MSTK_VERSION ${MSTK_VERSION_MAJOR}.${MSTK_VERSION_MINOR}.${MSTK_VERSION_PATCH})
set(MSTK_URL_STRING     "https://github.com/MeshToolkit/MSTK/archive")
set(MSTK_ARCHIVE_FILE   ${MSTK_VERSION_MAJOR}.${MSTK_VERSION_MINOR}.${MSTK_VERSION_PATCH}.tar.gz)
set(MSTK_SAVEAS_FILE    mstk-${MSTK_VERSION}.tar.gz)
set(MSTK_MD5_SUM        3ab4d8811257cb7a487a24e0c866a4db)

#
# TPL: MOAB
#
set(MOAB_VERSION_MAJOR  5)
set(MOAB_VERSION_MINOR  3)
set(MOAB_VERSION_PATCH  1)
set(MOAB_VERSION ${MOAB_VERSION_MAJOR}.${MOAB_VERSION_MINOR}.${MOAB_VERSION_PATCH})
set(MOAB_URL_STRING     ftp://ftp.mcs.anl.gov/pub/fathom)
set(MOAB_ARCHIVE_FILE   moab-${MOAB_VERSION}.tar.gz)
set(MOAB_SAVEAS_FILE    ${MOAB_ARCHIVE_FILE})
set(MOAB_MD5_SUM        935d18f8edf7dc3df625d9426a2d59e1)

#
# TPL: HYPRE
#
set(HYPRE_VERSION_MAJOR  2)
set(HYPRE_VERSION_MINOR  29)
set(HYPRE_VERSION_PATCH  0)
set(HYPRE_VERSION  ${HYPRE_VERSION_MAJOR}.${HYPRE_VERSION_MINOR}.${HYPRE_VERSION_PATCH})
set(HYPRE_URL_STRING     "https://github.com/hypre-space/hypre/archive/")
set(HYPRE_ARCHIVE_FILE   v${HYPRE_VERSION}.tar.gz)
set(HYPRE_SAVEAS_FILE    hypre-${HYPRE_VERSION}.tar.gz)
set(HYPRE_MD5_SUM        0b3abc221b216db97175709aa0bf94d7)
set(HYPRE_GIT_REPOSITORY "https://github.com/hypre-space/hypre")
set(HYPRE_GIT_TAG        "8f6bdc6ab8c9d01961fa0b3024a1969c6cb7877f")

#
# TPL: ParMetis
#
set(ParMetis_VERSION_MAJOR  4)
set(ParMetis_VERSION_MINOR  0)
set(ParMetis_VERSION_PATCH  3a)
set(ParMetis_VERSION  ${ParMetis_VERSION_MAJOR}.${ParMetis_VERSION_MINOR}.${ParMetis_VERSION_PATCH})
set(ParMetis_URL_STRING     ${AMANZI_TPLS_DOWNLOAD_URL})
set(ParMetis_ARCHIVE_FILE   parmetis-${ParMetis_VERSION}.tar.gz)
set(ParMetis_SAVEAS_FILE    ${ParMetis_ARCHIVE_FILE})
set(ParMetis_MD5_SUM        56ac6ebf6e7e8a522fa053c799dc7a92)

#
# TPL: SuperLU
#
set(SuperLU_VERSION_MAJOR  5)
set(SuperLU_VERSION_MINOR  2)
set(SuperLU_VERSION_PATCH  2)
set(SuperLU_VERSION  ${SuperLU_VERSION_MAJOR}.${SuperLU_VERSION_MINOR}.${SuperLU_VERSION_PATCH})
set(SuperLU_URL_STRING     "https://github.com/xiaoyeli/superlu/archive")
set(SuperLU_ARCHIVE_FILE   v${SuperLU_VERSION}.tar.gz)
set(SuperLU_SAVEAS_FILE    superlu_${SuperLU_VERSION}.tar.gz)
set(SuperLU_MD5_SUM        1e93259572bd2412674ed809a1446bd3)

#
# TPL: SuperLU_Dist
#
set(SuperLUDist_VERSION_MAJOR  6)
set(SuperLUDist_VERSION_MINOR  4)
set(SuperLUDist_VERSION_PATCH  0)
set(SuperLUDist_VERSION  ${SuperLUDist_VERSION_MAJOR}.${SuperLUDist_VERSION_MINOR}.${SuperLUDist_VERSION_PATCH})
set(SuperLUDist_URL_STRING     "https://github.com/xiaoyeli/superlu_dist/archive")
set(SuperLUDist_ARCHIVE_FILE   v${SuperLUDist_VERSION}.tar.gz)
set(SuperLUDist_SAVEAS_FILE    superlu_dist_${SuperLUDist_VERSION}.tar.gz)
set(SuperLUDist_MD5_SUM        4001999cda77d6176077f160f1a4659a)

#
# TPL: Sowing (Built by PETSc!)
#
set(Sowing_VERSION_MAJOR  1)
set(Sowing_VERSION_MINOR  1)
set(Sowing_VERSION_PATCH  26-p8)
set(Sowing_VERSION  ${Sowing_VERSION_MAJOR}.${Sowing_VERSION_MINOR}.${Sowing_VERSION_PATCH})
set(Sowing_URL_STRING     "https://bitbucket.org/petsc/pkg-sowing/get")
set(Sowing_ARCHIVE_FILE   v${Sowing_VERSION}.tar.gz)
set(Sowing_SAVEAS_FILE    sowing-${Sowing_VERSION}.tar.gz)
set(Sowing_MD5_SUM        da689d94e2565dada261a17f3c07448d)

#
# TPL: PETSc
#
set(PETSc_VERSION_MAJOR  3)
set(PETSc_VERSION_MINOR  20)
set(PETSc_VERSION_PATCH  0)
set(PETSc_VERSION  ${PETSc_VERSION_MAJOR}.${PETSc_VERSION_MINOR})
set(PETSc_ARCHIVE_VERSION ${PETSc_VERSION_MAJOR}.${PETSc_VERSION_MINOR}.${PETSc_VERSION_PATCH})
set(PETSc_URL_STRING     "https://gitlab.com/petsc/petsc/-/archive/v${PETSc_ARCHIVE_VERSION}")
set(PETSc_ARCHIVE_FILE   petsc-v${PETSc_VERSION}.tar.gz)
set(PETSc_SAVEAS_FILE    petsc-${PETSc_VERSION}.tar.gz)
set(PETSc_MD5_SUM        1f17155e2077cb027f0838a27d02ef3c)

#
# TPL: Trilinos
#
set(Trilinos_VERSION_MAJOR 15)
set(Trilinos_VERSION_MINOR 1)
set(Trilinos_VERSION_PATCH 0)
set(Trilinos_VERSION ${Trilinos_VERSION_MAJOR}-${Trilinos_VERSION_MINOR}-${Trilinos_VERSION_PATCH})
set(Trilinos_URL_STRING     "https://github.com/trilinos/Trilinos/archive")
set(Trilinos_ARCHIVE_FILE   trilinos-release-${Trilinos_VERSION}.tar.gz)
set(Trilinos_SAVEAS_FILE    ${Trilinos_ARCHIVE_FILE})
set(Trilinos_MD5_SUM       79237697af4fc42eaaf70f23104a8e12)
#set(Trilinos_GIT_REPOSITORY "https://github.com/trilinos/Trilinos")


#
# TPL: SEACAS
#
set(SEACAS_VERSION_MAJOR 2022)
set(SEACAS_VERSION_MINOR 02)
set(SEACAS_VERSION_PATCH 16)
set(SEACAS_VERSION ${SEACAS_VERSION_MAJOR}-${SEACAS_VERSION_MINOR}-${SEACAS_VERSION_PATCH})
set(SEACAS_URL_STRING     "https://github.com/gsjaardema/seacas/archive")
set(SEACAS_ARCHIVE_FILE   v${SEACAS_VERSION}.tar.gz)
set(SEACAS_SAVEAS_FILE    seacas-${SEACAS_VERSION}.tar.gz)
set(SEACAS_MD5_SUM        40452d7badecb05a0e859eeeb010003d)

#
# TPL: PFLOTRAN
#
set(PFLOTRAN_VERSION_MAJOR 5)
set(PFLOTRAN_VERSION_MINOR 0)
set(PFLOTRAN_VERSION_PATCH 0)
set(PFLOTRAN_VERSION ${PFLOTRAN_VERSION_MAJOR}.${PFLOTRAN_VERSION_MINOR}.${PFLOTRAN_VERSION_PATCH})
set(PFLOTRAN_URL_STRING     "https://gitlab.com/pflotran/pflotran/-/archive/v${PFLOTRAN_VERSION}")
set(PFLOTRAN_ARCHIVE_FILE   pflotran-v${PFLOTRAN_VERSION}.tar.gz)
set(PFLOTRAN_SAVEAS_FILE    pflotran-${PFLOTRAN_VERSION}.tar.gz)
set(PFLOTRAN_MD5_SUM        d44b5670223ea9e6fbb894a8842161e0)
#set(PFLOTRAN_GIT_REPOSITORY "https://gitlab.com/pflotran/pflotran.git")
#set(PFLOTRAN_GIT_TAG        "9e07f41")

#
# TPL: EcoSIM
#
set(ECOSIM_VERSION_MAJOR 0)
set(ECOSIM_VERSION_MINOR 1)
set(ECOSIM_VERSION_PATCH 0)
set(ECOSIM_URL_STRING     "https://github.com/jinyun1tang/EcoSIM/tree/agraus/PrescribedPhenology")
set(ECOSIM_ARCHIVE_FILE   ECOSIM-agraus-prephen.tar.gz)
set(ECOSIM_SAVEAS_FILE    ECOSIM-agraus-prephen.tar.gz)
set(ECOSIM_MD5_SUM        f10065689b6ebe7a67b95611bbb04c08)
set(ECOSIM_GIT_REPOSITORY "https://github.com/jinyun1tang/EcoSIM")
set(ECOSIM_GIT_TAG        "agraus/PrescribedPhenology")


#set(ECOSIM_URL_STRING     "https://github.com/jinyun1tang/EcoSIM")
#set(ECOSIM_ARCHIVE_FILE   ECOSIM-main.tar.gz)
#set(ECOSIM_SAVEAS_FILE    ECOSIM-main.tar.gz)
#set(ECOSIM_MD5_SUM        6c99353cbb57be8852597b3dc41c5629c7844c7c)
#set(ECOSIM_GIT_REPOSITORY "https://github.com/jinyun1tang/EcoSIM")
#set(ECOSIM_GIT_TAG        "6c99353")

#
# TPL: Alquimia
#
set(Alquimia_VERSION_MAJOR 1)
set(Alquimia_VERSION_MINOR 1)
set(Alquimia_VERSION_PATCH 0)
set(Alquimia_VERSION ${Alquimia_VERSION_MAJOR}.${Alquimia_VERSION_MINOR}.${Alquimia_VERSION_PATCH})
set(Alquimia_URL_STRING     https://github.com/LBL-EESA/alquimia-dev/archive/refs/tags)
set(Alquimia_ARCHIVE_FILE   v${Alquimia_VERSION}.tar.gz)
set(Alquimia_SAVEAS_FILE    alquimia-dev-${Alquimia_VERSION}.tar.gz)
set(Alquimia_MD5_SUM        adfa32fe2bcd690a847ec59390f82a0a)

#
# TPL: Silo
#
set(Silo_VERSION_MAJOR 4)
set(Silo_VERSION_MINOR 11)
set(Silo_VERSION_PATCH 1)
set(Silo_VERSION ${Silo_VERSION_MAJOR}.${Silo_VERSION_MINOR}.${Silo_VERSION_PATCH})
set(Silo_URL_STRING    "https://github.com/LLNL/Silo/archive")
set(Silo_ARCHIVE_FILE  ${Silo_VERSION}.tar.gz)
set(Silo_SAVEAS_FILE   silo-${Silo_VERSION}.tar.gz)
set(Silo_MD5_SUM       242ecb14ab3cdf7bf4e05e2da682644d)

#
# TPL: CrunchTope
#
set(CrunchTope_VERSION_MAJOR 101221)
set(CrunchTope_VERSION_MINOR cf938c8)
set(CrunchTope_VERSION_PATCH 0)
set(CrunchTope_VERSION  ${CrunchTope_VERSION_MAJOR}.${CrunchTope_VERSION_MINOR}.${CrunchTope_VERSION_PATCH})
set(CrunchTope_URL_STRING    ${AMANZI_TPLS_DOWNLOAD_URL})
set(CrunchTope_ARCHIVE_FILE  CrunchTope_${CrunchTope_VERSION}.tgz)
set(CrunchTope_SAVEAS_FILE   ${CrunchTope_ARCHIVE_FILE})
set(CrunchTope_MD5_SUM       689c4cafc34985af03562977dbdb19ce)

#
# TPL: Nanoflann
#
set(Nanoflann_VERSION_MAJOR 1)
set(Nanoflann_VERSION_MINOR 4)
set(Nanoflann_VERSION_PATCH 2)
set(Nanoflann_VERSION  ${Nanoflann_VERSION_MAJOR}.${Nanoflann_VERSION_MINOR}.${Nanoflann_VERSION_PATCH})
set(Nanoflann_URL_STRING    "https://github.com/jlblancoc/nanoflann/archive")
set(Nanoflann_ARCHIVE_FILE  v${Nanoflann_VERSION}.tar.gz)
set(Nanoflann_SAVEAS_FILE   nanoflann-${Nanoflann_VERSION}.tar.gz)
set(Nanoflann_MD5_SUM       90a95679ce797efa315e76dcb79c114d)

#
# TPL: CLM
#
set(CLM_VERSION_MAJOR 0)
set(CLM_VERSION_MINOR 1)
set(CLM_VERSION_PATCH 1)
set(CLM_VERSION  ${CLM_VERSION_MAJOR}.${CLM_VERSION_MINOR}.${CLM_VERSION_PATCH})
set(CLM_URL_STRING    "https://github.com/amanzi/pf-clm/archive")
set(CLM_ARCHIVE_FILE  v${CLM_VERSION}.tar.gz)
set(CLM_SAVEAS_FILE   clm-${CLM_ARCHIVE_FILE})
set(CLM_MD5_SUM       1412ff30fc5db0d3c1dc71ef30c86995)

#
# TPL: exprtk
#
set(EXPRTK_VERSION_MAJOR 0)
set(EXPRTK_VERSION_MINOR 0)
set(EXPRTK_VERSION_PATCH 2)
set(EXPRTK_VERSION  ${EXPRTK_VERSION_MAJOR}.${EXPRTK_VERSION_MINOR}.${EXPRTK_VERSION_PATCH})
set(EXPRTK_URL_STRING    "https://github.com/ArashPartow/exprtk/archive")
set(EXPRTK_ARCHIVE_FILE  ${EXPRTK_VERSION}.tar.gz)
set(EXPRTK_SAVEAS_FILE   exprtk-${EXPRTK_ARCHIVE_FILE})
set(EXPRTK_MD5_SUM       897d4d3faedf9ebaa96d66fd14c2f967)

