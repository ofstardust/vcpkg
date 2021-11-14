vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL git@github.com:ofstardust/flexpp.git
    HEAD_REF master
    REF c447c5a62cf5134b0594e953fc7e9fc4278f987d
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()

# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

# vcpkg_copy_pdbs()

file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)