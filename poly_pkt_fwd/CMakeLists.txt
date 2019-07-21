add_executable(poly_pkt_fwd
	src/base64.c
	src/ghost.c
	src/monitor.c
	src/parson.c
	src/poly_pkt_fwd.c
)

target_include_directories(poly_pkt_fwd
	PRIVATE
		inc/
)

target_link_libraries(poly_pkt_fwd
	loragw
	pthread
)
