set(LIBLORAGW_VERSION 2.0)
set(CFG_SPI_OPT CFG_SPI_NATIVE)
set(PLATFORM kerlink)
set(DEBUG_AUX 0)
set(DEBUG_SPI 0)
set(DEBUG_REG 0)
set(DEBUG_HAL 0)
set(DEBUG_GPS 0)
set(DEBUG_GPIO 0)

configure_file(
	inc/config.h.in
	generated/config.h
)

add_library(loragw
	src/loragw_aux.c
	src/loragw_gps.c
	src/loragw_hal.c
	src/loragw_reg.c
	src/loragw_spi.native.c
)

target_include_directories(loragw
	PUBLIC
		inc/
		$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/generated>
		$<INSTALL_INTERFACE:$<INSTALL_PREFIX>/$<CONFIG>/generated>
)

target_link_libraries(loragw
	PUBLIC
		rt
)
