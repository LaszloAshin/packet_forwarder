cmake_minimum_required(VERSION 3.13)
project("LoRa packet forwarder")
include(CTest)
add_subdirectory(libloragw)
add_subdirectory(poly_pkt_fwd)
add_subdirectory(util_ack)
add_subdirectory(util_sink)
add_subdirectory(util_tx_test)
add_subdirectory(tests)
