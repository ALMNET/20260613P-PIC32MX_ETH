include("${CMAKE_CURRENT_LIST_DIR}/rule.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/file.cmake")

set(20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_library_list )


# Main target for this project
add_executable(20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_Mnq2ZO8p ${20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_library_list})

set_target_properties(20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_Mnq2ZO8p PROPERTIES
    OUTPUT_NAME "P32_TCP_sk2_freertos"
    SUFFIX ".elf"
    RUNTIME_OUTPUT_DIRECTORY "${20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_output_dir}")


# Add the link options from the rule file.
A_20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_link_rule( 20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_Mnq2ZO8p)

# Add bin2hex target for converting built file to a .hex file.
string(REGEX REPLACE [.]elf$ .hex 20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_name_hex ${20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_name})
add_custom_target(20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_Bin2Hex ALL
    COMMAND ${MP_BIN2HEX} \"${20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_output_dir}/${20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_name}\"
    BYPRODUCTS ${20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_output_dir}/${20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_name_hex}
    COMMENT "Convert built file to .hex")
add_dependencies(20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_Bin2Hex 20260613P_PIC32MX_ETH_X_P32_TCP_sk2_freertos_image_Mnq2ZO8p)



