add_executable(util_tx_test
	src/util_tx_test.c
	src/base64.c
)

target_include_directories(util_tx_test
	PRIVATE
		inc/
)

target_link_libraries(util_tx_test
	loragw
)
