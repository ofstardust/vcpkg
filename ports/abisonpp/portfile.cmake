vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL git@github.com:ofstardust/bisonpp.git
    HEAD_REF master
    REF bb7c53334b8d1eb2cfdef29892d7be7a2092381f
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
)

vcpkg_install_cmake()

# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
# file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

# vcpkg_copy_pdbs()

file(INSTALL "${SOURCE_PATH}/COPYING" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)