add_executable(tests
	tests.c
)

#target_link_libraries(tests
#	pktfwd
#)

add_test(NAME tests COMMAND tests)
